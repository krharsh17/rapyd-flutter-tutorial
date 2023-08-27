// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemeResponse _$$_MemeResponseFromJson(Map<String, dynamic> json) =>
    _$_MemeResponse(
      success: json['success'] as bool? ?? false,
      data: MemeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MemeResponseToJson(_$_MemeResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$_MemeData _$$_MemeDataFromJson(Map<String, dynamic> json) => _$_MemeData(
      memes: (json['memes'] as List<dynamic>?)
              ?.map((e) => Meme.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MemeDataToJson(_$_MemeData instance) =>
    <String, dynamic>{
      'memes': instance.memes,
    };

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
