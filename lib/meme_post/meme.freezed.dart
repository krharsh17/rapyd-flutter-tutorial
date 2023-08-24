// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meme _$MemeFromJson(Map<String, dynamic> json) {
  return _Meme.fromJson(json);
}

/// @nodoc
mixin _$Meme {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'box_count')
  int get boxCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeCopyWith<Meme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeCopyWith<$Res> {
  factory $MemeCopyWith(Meme value, $Res Function(Meme) then) =
      _$MemeCopyWithImpl<$Res, Meme>;
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      int width,
      int height,
      @JsonKey(name: 'box_count') int boxCount});
}

/// @nodoc
class _$MemeCopyWithImpl<$Res, $Val extends Meme>
    implements $MemeCopyWith<$Res> {
  _$MemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? width = null,
    Object? height = null,
    Object? boxCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      boxCount: null == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemeCopyWith<$Res> implements $MemeCopyWith<$Res> {
  factory _$$_MemeCopyWith(_$_Meme value, $Res Function(_$_Meme) then) =
      __$$_MemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      int width,
      int height,
      @JsonKey(name: 'box_count') int boxCount});
}

/// @nodoc
class __$$_MemeCopyWithImpl<$Res> extends _$MemeCopyWithImpl<$Res, _$_Meme>
    implements _$$_MemeCopyWith<$Res> {
  __$$_MemeCopyWithImpl(_$_Meme _value, $Res Function(_$_Meme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? width = null,
    Object? height = null,
    Object? boxCount = null,
  }) {
    return _then(_$_Meme(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      boxCount: null == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meme implements _Meme {
  _$_Meme(
      {required this.id,
      required this.name,
      required this.url,
      required this.width,
      required this.height,
      @JsonKey(name: 'box_count') required this.boxCount});

  factory _$_Meme.fromJson(Map<String, dynamic> json) => _$$_MemeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final int width;
  @override
  final int height;
  @override
  @JsonKey(name: 'box_count')
  final int boxCount;

  @override
  String toString() {
    return 'Meme(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meme &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.boxCount, boxCount) ||
                other.boxCount == boxCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, url, width, height, boxCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemeCopyWith<_$_Meme> get copyWith =>
      __$$_MemeCopyWithImpl<_$_Meme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemeToJson(
      this,
    );
  }
}

abstract class _Meme implements Meme {
  factory _Meme(
      {required final String id,
      required final String name,
      required final String url,
      required final int width,
      required final int height,
      @JsonKey(name: 'box_count') required final int boxCount}) = _$_Meme;

  factory _Meme.fromJson(Map<String, dynamic> json) = _$_Meme.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(name: 'box_count')
  int get boxCount;
  @override
  @JsonKey(ignore: true)
  _$$_MemeCopyWith<_$_Meme> get copyWith => throw _privateConstructorUsedError;
}
