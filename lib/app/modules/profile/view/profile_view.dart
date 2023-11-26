import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack4/app/modules/main/controllers/main_controller.dart';
import 'package:hack4/app/routes/app_pages.dart';

class ProfileView extends GetView<MainController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Профиль')),
      body: ListView(children: [
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.notifications),
          title: const Text('Уведомления'),
        ),
        const Divider(),
        Visibility(
          child: ListTile(
            onTap: () {
              Get.offAllNamed(Routes.LOGIN);
            },
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Выйти из аккаунта'),
          ),
        ),
        Visibility(
          child: ListTile(
            onTap: () {
              Get.offAllNamed(Routes.LOGIN);
            },
            leading: const Icon(Icons.person),
            title: const Text('Войти в аккаунт'),
          ),
        )
      ]),
    );
  }
}
