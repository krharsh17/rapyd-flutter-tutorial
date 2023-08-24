// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'element_measurements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ElementMeasurements _$ElementMeasurementsFromJson(Map<String, dynamic> json) {
  return _ElementMeasurements.fromJson(json);
}

/// @nodoc
mixin _$ElementMeasurements {
  @JsonKey(name: 'Height')
  double? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'Width')
  double? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementMeasurementsCopyWith<ElementMeasurements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementMeasurementsCopyWith<$Res> {
  factory $ElementMeasurementsCopyWith(
          ElementMeasurements value, $Res Function(ElementMeasurements) then) =
      _$ElementMeasurementsCopyWithImpl<$Res, ElementMeasurements>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Height') double? height,
      @JsonKey(name: 'Width') double? width});
}

/// @nodoc
class _$ElementMeasurementsCopyWithImpl<$Res, $Val extends ElementMeasurements>
    implements $ElementMeasurementsCopyWith<$Res> {
  _$ElementMeasurementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ElementMeasurementsCopyWith<$Res>
    implements $ElementMeasurementsCopyWith<$Res> {
  factory _$$_ElementMeasurementsCopyWith(_$_ElementMeasurements value,
          $Res Function(_$_ElementMeasurements) then) =
      __$$_ElementMeasurementsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Height') double? height,
      @JsonKey(name: 'Width') double? width});
}

/// @nodoc
class __$$_ElementMeasurementsCopyWithImpl<$Res>
    extends _$ElementMeasurementsCopyWithImpl<$Res, _$_ElementMeasurements>
    implements _$$_ElementMeasurementsCopyWith<$Res> {
  __$$_ElementMeasurementsCopyWithImpl(_$_ElementMeasurements _value,
      $Res Function(_$_ElementMeasurements) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_ElementMeasurements(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElementMeasurements implements _ElementMeasurements {
  _$_ElementMeasurements(
      {@JsonKey(name: 'Height') this.height,
      @JsonKey(name: 'Width') this.width});

  factory _$_ElementMeasurements.fromJson(Map<String, dynamic> json) =>
      _$$_ElementMeasurementsFromJson(json);

  @override
  @JsonKey(name: 'Height')
  final double? height;
  @override
  @JsonKey(name: 'Width')
  final double? width;

  @override
  String toString() {
    return 'ElementMeasurements(height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementMeasurements &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElementMeasurementsCopyWith<_$_ElementMeasurements> get copyWith =>
      __$$_ElementMeasurementsCopyWithImpl<_$_ElementMeasurements>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElementMeasurementsToJson(
      this,
    );
  }
}

abstract class _ElementMeasurements implements ElementMeasurements {
  factory _ElementMeasurements(
      {@JsonKey(name: 'Height') final double? height,
      @JsonKey(name: 'Width') final double? width}) = _$_ElementMeasurements;

  factory _ElementMeasurements.fromJson(Map<String, dynamic> json) =
      _$_ElementMeasurements.fromJson;

  @override
  @JsonKey(name: 'Height')
  double? get height;
  @override
  @JsonKey(name: 'Width')
  double? get width;
  @override
  @JsonKey(ignore: true)
  _$$_ElementMeasurementsCopyWith<_$_ElementMeasurements> get copyWith =>
      throw _privateConstructorUsedError;
}
