import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack4/app/modules/appeal/controllers/appeal_controller.dart';
import 'package:latlong2/latlong.dart';

class AppealView extends GetView<AppealController> {
  const AppealView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Обращения')),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            controller.addAppeal();
          }),
      body: ListView.builder(
        itemCount: controller.appeals.length,
        itemBuilder: (context, index) {
          final status = controller.appeals[index].status;
          final Color statusColor = status == 0 ? Colors.yellow : Colors.green;
          return ListTile(
            title: Text(controller.appeals[index].category),
            subtitle: Text(controller.appeals[index].title),
            trailing: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.all(Radius.circular(90)))),
            onTap: () {},
          );
        },
      ),
    );
  }
}
