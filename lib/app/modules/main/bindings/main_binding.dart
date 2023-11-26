import 'package:get/get.dart';
import 'package:hack4/app/modules/appeal/controllers/appeal_controller.dart';
import 'package:hack4/app/modules/map/controllers/map_controller.dart';
import 'package:hack4/app/modules/news/controllers/news_controller.dart';
import 'package:hack4/app/modules/profile/controllers/profile_controller.dart';
import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(
      MainController(),
    );
    Get.put<NewsController>(
      NewsController(),
    );
    Get.put<AppealController>(
      AppealController(),
    );
    Get.put<MapController>(
      MapController(),
    );
    Get.put<ProfileController>(
      ProfileController(),
    );
  }
}
