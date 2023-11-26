import 'package:get/get.dart';
class MainController extends GetxController {
  MainController();
  final RxInt _currentPageIndex = 0.obs;
  set currentPageIndex(value) {
    if (0 <= _currentPageIndex.value || _currentPageIndex.value >= 2) {
      _currentPageIndex.value = value;
    }
  }
  get currentPageIndex => _currentPageIndex.value;
}
