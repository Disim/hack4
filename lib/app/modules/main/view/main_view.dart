import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack4/app/modules/appeal/view/appeal_view.dart';
import 'package:hack4/app/modules/main/controllers/main_controller.dart';
import 'package:hack4/app/modules/map/view/map_view.dart';
import 'package:hack4/app/modules/news/view/news_view.dart';
import 'package:hack4/app/modules/profile/view/profile_view.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});
  static const List<Widget> views = [
    NewsView(),
    AppealView(),
    MapView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            onDestinationSelected: (int index) {
              controller.currentPageIndex = index;
            },
            selectedIndex: controller.currentPageIndex,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(Icons.view_agenda),
                icon: Icon(Icons.view_agenda_outlined),
                label: 'Новости',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.feedback),
                icon: Icon(Icons.feedback_outlined),
                label: 'Обращения',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.map),
                icon: Icon(Icons.map_outlined),
                label: 'Карта',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person_2),
                icon: Icon(Icons.person_2_outlined),
                label: 'Профиль',
              ),
            ],
          ),
        ),
        body: Center(
          child: Obx(() => views[controller.currentPageIndex]),
        ));
  }
}
