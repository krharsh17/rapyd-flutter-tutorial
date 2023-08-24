// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Measurement _$$_MeasurementFromJson(Map<String, dynamic> json) =>
    _$_Measurement(
      elementName: json['elementName'] as String?,
      elementDescription: json['elementDescription'],
      elementMeasurements: json['elementMeasurements'] == null
          ? null
          : ElementMeasurements.fromJson(
              json['elementMeasurements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MeasurementToJson(_$_Measurement instance) =>
    <String, dynamic>{
      'elementName': instance.elementName,
      'elementDescription': instance.elementDescription,
      'elementMeasurements': instance.elementMeasurements,
    };
