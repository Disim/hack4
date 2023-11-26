import 'package:get/get.dart';
import 'package:hack4/app/data/models/user/user.dart';
import 'package:hack4/app/data/services/auth_service.dart';
import 'package:hack4/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  RegisterController();

  final authService = Get.find<AuthService>();
  register(String name, String email, String password) async {
    final result = await authService.register(
      User(
        email: email,
        fullName: name,
        password: password,
      ),
    );
    Get.offAllNamed(Routes.LOGIN);
    Get.defaultDialog(
        title: 'Подтвердите email',
        middleText:
            'На указанную вами почту направлено письмо. Подтвердите почту, после чего вернитесь в приложение, чтобы авторизоваться');
    // if (result != 0) {
    //   Get.offAllNamed(Routes.LOGIN);
    //   Get.defaultDialog(
    //       title: 'Подтвердите email',
    //       middleText:
    //           'На указанную вами почту направлено письмо. Подтвердите почту, после чего вернитесь в приложение, чтобы авторизоваться');
    // } else {
    //   Get.showSnackbar(const GetSnackBar(
    //     title: 'Ошибка',
    //     message: 'Не удалось зарегистрироваться',
    //   ));
    // }
  }
}
