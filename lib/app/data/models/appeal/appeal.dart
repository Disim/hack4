import 'package:freezed_annotation/freezed_annotation.dart';

part 'appeal.freezed.dart';
part 'appeal.g.dart';

@freezed
class Appeal with _$Appeal {
  factory Appeal({
    required String title,
    required String text,
    required String category,
    required int status,
    required List<String> images,
    required String answer,
    required List<String> answerImages,
  }) = _Appeal;

  factory Appeal.fromJson(Map<String, dynamic> json) => _$AppealFromJson(json);
}
