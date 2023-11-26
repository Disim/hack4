import 'package:get/get.dart';
import 'package:hack4/app/modules/main/bindings/main_binding.dart';
import 'package:hack4/app/modules/main/view/main_view.dart';
import 'package:hack4/app/modules/register/bindings/register_binding.dart';
import 'package:hack4/app/modules/register/view/register_view.dart';
import '../modules/auth/view/auth_view.dart';
import '../modules/auth/bindings/auth_binding.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/view/login_view.dart';
// ignore_for_file: constant_identifier_names
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.MAIN;
  static final routes = [
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
  ];
}
