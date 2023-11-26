import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    required String address,
    required double lat,
    required double lon,
    required String by,
    required DateTime datePublish,
    required DateTime dateStart,
    required DateTime dateFinish,
    required String title,
    required String text,
    required String type,
    required List<String> tags,
    required List<String> images,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
