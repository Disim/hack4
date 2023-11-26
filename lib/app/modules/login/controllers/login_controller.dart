import 'package:get/get.dart';
import 'package:hack4/app/data/models/user/user.dart';
import 'package:hack4/app/data/services/auth_service.dart';
import 'package:hack4/app/routes/app_pages.dart';

class LoginController extends GetxController {
  LoginController();

  final authService = Get.find<AuthService>();
  login(String email, String password) async {
    final result = await authService.login(
      User(
        email: email,
        fullName: '',
        password: password,
      ),
    );
    if (result == 0) {
      Get.offAllNamed(Routes.MAIN);
    } else {
      Get.showSnackbar(const GetSnackBar(
        title: 'Ошибка',
        message: 'Не удалось авторизоваться. Проверьте логин и пароль.',
      ));
    }
  }
}
