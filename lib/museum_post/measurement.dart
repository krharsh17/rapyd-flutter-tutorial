import 'package:freezed_annotation/freezed_annotation.dart';

import 'element_measurements.dart';

part 'measurement.freezed.dart';
part 'measurement.g.dart';

@freezed
class Measurement with _$Measurement {
  factory Measurement({
    String? elementName,
    dynamic elementDescription,
    ElementMeasurements? elementMeasurements,
  }) = _Measurement;

  factory Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);
}
