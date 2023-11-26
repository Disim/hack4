// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      address: json['address'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      by: json['by'] as String,
      datePublish: DateTime.parse(json['datePublish'] as String),
      dateStart: DateTime.parse(json['dateStart'] as String),
      dateFinish: DateTime.parse(json['dateFinish'] as String),
      title: json['title'] as String,
      text: json['text'] as String,
      type: json['type'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'lat': instance.lat,
      'lon': instance.lon,
      'by': instance.by,
      'datePublish': instance.datePublish.toIso8601String(),
      'dateStart': instance.dateStart.toIso8601String(),
      'dateFinish': instance.dateFinish.toIso8601String(),
      'title': instance.title,
      'text': instance.text,
      'type': instance.type,
      'tags': instance.tags,
      'images': instance.images,
    };
