import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hack4/app/data/models/jwt_model/jwt_model.dart';
import 'package:hack4/app/data/models/user/user.dart';
import 'package:hack4/app/data/providers/api_endpoints.dart';
import 'package:hack4/app/data/constants.dart';
import 'package:hack4/app/data/services/storage_service.dart';

class AuthService extends GetxService {
  static AuthService get instance => Get.find();
  var isLogged = false;
  JwtModel _tokens = JwtModel(refresh: '');
  StorageService get _storage => Get.find<StorageService>();
  var client = dio.Dio(
    dio.BaseOptions(
      baseUrl: Constants.BASE_URL,
      contentType: 'application/json; charset=UTF-8',
    ),
  );
  String? get accessToken => _tokens.access;
  Future<AuthService> init() async {
    isLogged = await refreshTokens();
    return this;
  }

  Future<void> updateTokens(JwtModel tokens) async {
    _tokens = tokens;
    await _storage.setRefreshToken(_tokens.refresh);
  }

  Future<void> clearTokens() async {
    isLogged = false;
    var tokens = JwtModel(refresh: '');
    await updateTokens(tokens);
    Get.offAllNamed('/login');
  }

  Future<bool> refreshTokens() async {
    try {
      Map<String, dynamic> map = {};
      var refreshToken = await _storage.getRefresh();
      if (refreshToken == null) throw "No token.";
      map.addEntries([MapEntry(HttpHeaders.RefreshToken, refreshToken)]);
      var result = await client.post(ApiEndpoints.refreshTokens,
          data: dio.FormData.fromMap(map));
      if (result.statusCode == 200) {
        var newTokens = JwtModel.fromJson(result.data);
        await updateTokens(newTokens);
        return true;
      }

      return false;
    } on dio.DioException catch (e) {
      printError(info: "Refresh tokens error!");
      printError(info: e.toString());
      return false;
    } catch (e) {
      printError(info: e.toString());

      return false;
    }
  }

  Future<int> sign(User user, String type) async {
    final data = dio.FormData.fromMap({
      'email': user.email,
      'username': user.fullName,
      'password': user.password,
    });
    try {
      final response = await client.post(type, data: data);
      if (kDebugMode) {
        print(response);
      }
      if (type == ApiEndpoints.signIn) {
        var tokens = JwtModel.fromJson(response.data);
        updateTokens(tokens);
        return 0;
      } else if (type == ApiEndpoints.signUp) {
        final result = response.data['message'];
        if (result == 'Registration successful') {
          return 0;
        }
      }
      return 1;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return 1;
    }
  }

  Future<int> login(User user) => sign(user, ApiEndpoints.signIn);
  Future<int> register(User user) => sign(user, ApiEndpoints.signUp);
  Future<void> logout() async => await clearTokens();
}
