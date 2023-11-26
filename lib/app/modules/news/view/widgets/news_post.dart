import 'package:flutter/material.dart';
import 'package:hack4/app/data/models/post/post.dart';

class NewsPost extends StatelessWidget {
  const NewsPost({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    final String publishDate =
        '${post.datePublish.day}.${post.datePublish.month}.${post.datePublish.year}.';
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Visibility(
          visible: post.images.isNotEmpty,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.network(
              post.images[0],
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(post.by,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  Text(publishDate,
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              Text(
                post.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                post.text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    itemCount: post.tags.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final String tag = post.tags[index];
                      return ActionChip(
                        elevation: 6.0,
                        label: Text(tag),
                        shape: const StadiumBorder(
                          side: BorderSide(
                            width: 1,
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
