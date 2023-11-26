import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack4/app/modules/news/controllers/news_controller.dart';
import 'package:hack4/app/modules/news/view/widgets/news_post.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Новости')),
      body: ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            return NewsPost(
              post: controller.posts[index],
            );
          }),
    );
  }
}
