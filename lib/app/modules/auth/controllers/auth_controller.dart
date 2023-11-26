import 'package:get/get.dart';
import 'package:hack4/app/data/services/auth_service.dart';
import 'package:hack4/app/routes/app_pages.dart';
class AuthController extends GetxController {
  AuthService get authService => Get.find<AuthService>();
  @override
  void onReady() {
    if (authService.isLogged) {
      Get.offNamed(Routes.MAIN);
    } else {
      Get.offNamed(Routes.LOGIN);
    }
    super.onReady();
  }
}
