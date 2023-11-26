// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appeal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppealImpl _$$AppealImplFromJson(Map<String, dynamic> json) => _$AppealImpl(
      title: json['title'] as String,
      text: json['text'] as String,
      category: json['category'] as String,
      status: json['status'] as int,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      answer: json['answer'] as String,
      answerImages: (json['answerImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AppealImplToJson(_$AppealImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'category': instance.category,
      'status': instance.status,
      'images': instance.images,
      'answer': instance.answer,
      'answerImages': instance.answerImages,
    };
