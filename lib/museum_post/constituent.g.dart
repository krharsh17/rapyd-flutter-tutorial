// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constituent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Constituent _$$_ConstituentFromJson(Map<String, dynamic> json) =>
    _$_Constituent(
      constituentId: json['constituentID'] as int?,
      role: json['role'] as String?,
      name: json['name'] as String?,
      constituentUlanUrl: json['constituentULAN_URL'] as String?,
      constituentWikidataUrl: json['constituentWikidata_URL'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$$_ConstituentToJson(_$_Constituent instance) =>
    <String, dynamic>{
      'constituentID': instance.constituentId,
      'role': instance.role,
      'name': instance.name,
      'constituentULAN_URL': instance.constituentUlanUrl,
      'constituentWikidata_URL': instance.constituentWikidataUrl,
      'gender': instance.gender,
    };
