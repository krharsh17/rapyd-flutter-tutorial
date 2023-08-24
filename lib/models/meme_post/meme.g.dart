// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meme _$$_MemeFromJson(Map<String, dynamic> json) => _$_Meme(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      boxCount: json['box_count'] as int,
    );

Map<String, dynamic> _$$_MemeToJson(_$_Meme instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'box_count': instance.boxCount,
    };
