import 'package:freezed_annotation/freezed_annotation.dart';

part 'element_measurements.freezed.dart';
part 'element_measurements.g.dart';

@freezed
class ElementMeasurements with _$ElementMeasurements {
  factory ElementMeasurements({
    @JsonKey(name: 'Height') double? height,
    @JsonKey(name: 'Width') double? width,
  }) = _ElementMeasurements;

  factory ElementMeasurements.fromJson(Map<String, dynamic> json) =>
      _$ElementMeasurementsFromJson(json);
}
