import 'package:get/get.dart';
class ProfileController extends GetxController {
  ProfileController();
  final RxInt _currentPageIndex = 0.obs;
  set currentPageIndex(value) {
    if (0 <= _currentPageIndex.value || _currentPageIndex.value >= 2) {
      _currentPageIndex.value = value;
    }
  }
  get currentPageIndex => _currentPageIndex.value;
}
