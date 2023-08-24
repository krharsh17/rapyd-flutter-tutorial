// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meme_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemePost _$$_MemePostFromJson(Map<String, dynamic> json) => _$_MemePost(
      success: json['success'] as bool? ?? false,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MemePostToJson(_$_MemePost instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
