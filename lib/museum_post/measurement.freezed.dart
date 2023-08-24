// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Measurement _$MeasurementFromJson(Map<String, dynamic> json) {
  return _Measurement.fromJson(json);
}

/// @nodoc
mixin _$Measurement {
  String? get elementName => throw _privateConstructorUsedError;
  dynamic get elementDescription => throw _privateConstructorUsedError;
  ElementMeasurements? get elementMeasurements =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementCopyWith<Measurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementCopyWith<$Res> {
  factory $MeasurementCopyWith(
          Measurement value, $Res Function(Measurement) then) =
      _$MeasurementCopyWithImpl<$Res, Measurement>;
  @useResult
  $Res call(
      {String? elementName,
      dynamic elementDescription,
      ElementMeasurements? elementMeasurements});

  $ElementMeasurementsCopyWith<$Res>? get elementMeasurements;
}

/// @nodoc
class _$MeasurementCopyWithImpl<$Res, $Val extends Measurement>
    implements $MeasurementCopyWith<$Res> {
  _$MeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = freezed,
    Object? elementDescription = freezed,
    Object? elementMeasurements = freezed,
  }) {
    return _then(_value.copyWith(
      elementName: freezed == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String?,
      elementDescription: freezed == elementDescription
          ? _value.elementDescription
          : elementDescription // ignore: cast_nullable_to_non_nullable
              as dynamic,
      elementMeasurements: freezed == elementMeasurements
          ? _value.elementMeasurements
          : elementMeasurements // ignore: cast_nullable_to_non_nullable
              as ElementMeasurements?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ElementMeasurementsCopyWith<$Res>? get elementMeasurements {
    if (_value.elementMeasurements == null) {
      return null;
    }

    return $ElementMeasurementsCopyWith<$Res>(_value.elementMeasurements!,
        (value) {
      return _then(_value.copyWith(elementMeasurements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MeasurementCopyWith<$Res>
    implements $MeasurementCopyWith<$Res> {
  factory _$$_MeasurementCopyWith(
          _$_Measurement value, $Res Function(_$_Measurement) then) =
      __$$_MeasurementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? elementName,
      dynamic elementDescription,
      ElementMeasurements? elementMeasurements});

  @override
  $ElementMeasurementsCopyWith<$Res>? get elementMeasurements;
}

/// @nodoc
class __$$_MeasurementCopyWithImpl<$Res>
    extends _$MeasurementCopyWithImpl<$Res, _$_Measurement>
    implements _$$_MeasurementCopyWith<$Res> {
  __$$_MeasurementCopyWithImpl(
      _$_Measurement _value, $Res Function(_$_Measurement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementName = freezed,
    Object? elementDescription = freezed,
    Object? elementMeasurements = freezed,
  }) {
    return _then(_$_Measurement(
      elementName: freezed == elementName
          ? _value.elementName
          : elementName // ignore: cast_nullable_to_non_nullable
              as String?,
      elementDescription: freezed == elementDescription
          ? _value.elementDescription
          : elementDescription // ignore: cast_nullable_to_non_nullable
              as dynamic,
      elementMeasurements: freezed == elementMeasurements
          ? _value.elementMeasurements
          : elementMeasurements // ignore: cast_nullable_to_non_nullable
              as ElementMeasurements?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Measurement implements _Measurement {
  _$_Measurement(
      {this.elementName, this.elementDescription, this.elementMeasurements});

  factory _$_Measurement.fromJson(Map<String, dynamic> json) =>
      _$$_MeasurementFromJson(json);

  @override
  final String? elementName;
  @override
  final dynamic elementDescription;
  @override
  final ElementMeasurements? elementMeasurements;

  @override
  String toString() {
    return 'Measurement(elementName: $elementName, elementDescription: $elementDescription, elementMeasurements: $elementMeasurements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Measurement &&
            (identical(other.elementName, elementName) ||
                other.elementName == elementName) &&
            const DeepCollectionEquality()
                .equals(other.elementDescription, elementDescription) &&
            (identical(other.elementMeasurements, elementMeasurements) ||
                other.elementMeasurements == elementMeasurements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      elementName,
      const DeepCollectionEquality().hash(elementDescription),
      elementMeasurements);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasurementCopyWith<_$_Measurement> get copyWith =>
      __$$_MeasurementCopyWithImpl<_$_Measurement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasurementToJson(
      this,
    );
  }
}

abstract class _Measurement implements Measurement {
  factory _Measurement(
      {final String? elementName,
      final dynamic elementDescription,
      final ElementMeasurements? elementMeasurements}) = _$_Measurement;

  factory _Measurement.fromJson(Map<String, dynamic> json) =
      _$_Measurement.fromJson;

  @override
  String? get elementName;
  @override
  dynamic get elementDescription;
  @override
  ElementMeasurements? get elementMeasurements;
  @override
  @JsonKey(ignore: true)
  _$$_MeasurementCopyWith<_$_Measurement> get copyWith =>
      throw _privateConstructorUsedError;
}
