// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemeResponse _$MemeResponseFromJson(Map<String, dynamic> json) {
  return _MemeResponse.fromJson(json);
}

/// @nodoc
mixin _$MemeResponse {
  bool get success => throw _privateConstructorUsedError;
  MemeData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeResponseCopyWith<MemeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeResponseCopyWith<$Res> {
  factory $MemeResponseCopyWith(
          MemeResponse value, $Res Function(MemeResponse) then) =
      _$MemeResponseCopyWithImpl<$Res, MemeResponse>;
  @useResult
  $Res call({bool success, MemeData data});

  $MemeDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MemeResponseCopyWithImpl<$Res, $Val extends MemeResponse>
    implements $MemeResponseCopyWith<$Res> {
  _$MemeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MemeData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemeDataCopyWith<$Res> get data {
    return $MemeDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MemeResponseCopyWith<$Res>
    implements $MemeResponseCopyWith<$Res> {
  factory _$$_MemeResponseCopyWith(
          _$_MemeResponse value, $Res Function(_$_MemeResponse) then) =
      __$$_MemeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, MemeData data});

  @override
  $MemeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_MemeResponseCopyWithImpl<$Res>
    extends _$MemeResponseCopyWithImpl<$Res, _$_MemeResponse>
    implements _$$_MemeResponseCopyWith<$Res> {
  __$$_MemeResponseCopyWithImpl(
      _$_MemeResponse _value, $Res Function(_$_MemeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$_MemeResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MemeData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemeResponse implements _MemeResponse {
  _$_MemeResponse({this.success = false, required this.data});

  factory _$_MemeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MemeResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final MemeData data;

  @override
  String toString() {
    return 'MemeResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemeResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemeResponseCopyWith<_$_MemeResponse> get copyWith =>
      __$$_MemeResponseCopyWithImpl<_$_MemeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemeResponseToJson(
      this,
    );
  }
}

abstract class _MemeResponse implements MemeResponse {
  factory _MemeResponse({final bool success, required final MemeData data}) =
      _$_MemeResponse;

  factory _MemeResponse.fromJson(Map<String, dynamic> json) =
      _$_MemeResponse.fromJson;

  @override
  bool get success;
  @override
  MemeData get data;
  @override
  @JsonKey(ignore: true)
  _$$_MemeResponseCopyWith<_$_MemeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MemeData _$MemeDataFromJson(Map<String, dynamic> json) {
  return _MemeData.fromJson(json);
}

/// @nodoc
mixin _$MemeData {
  List<Meme> get memes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeDataCopyWith<MemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeDataCopyWith<$Res> {
  factory $MemeDataCopyWith(MemeData value, $Res Function(MemeData) then) =
      _$MemeDataCopyWithImpl<$Res, MemeData>;
  @useResult
  $Res call({List<Meme> memes});
}

/// @nodoc
class _$MemeDataCopyWithImpl<$Res, $Val extends MemeData>
    implements $MemeDataCopyWith<$Res> {
  _$MemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memes = null,
  }) {
    return _then(_value.copyWith(
      memes: null == memes
          ? _value.memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Meme>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemeDataCopyWith<$Res> implements $MemeDataCopyWith<$Res> {
  factory _$$_MemeDataCopyWith(
          _$_MemeData value, $Res Function(_$_MemeData) then) =
      __$$_MemeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Meme> memes});
}

/// @nodoc
class __$$_MemeDataCopyWithImpl<$Res>
    extends _$MemeDataCopyWithImpl<$Res, _$_MemeData>
    implements _$$_MemeDataCopyWith<$Res> {
  __$$_MemeDataCopyWithImpl(
      _$_MemeData _value, $Res Function(_$_MemeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memes = null,
  }) {
    return _then(_$_MemeData(
      memes: null == memes
          ? _value._memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Meme>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemeData implements _MemeData {
  _$_MemeData({final List<Meme> memes = const []}) : _memes = memes;

  factory _$_MemeData.fromJson(Map<String, dynamic> json) =>
      _$$_MemeDataFromJson(json);

  final List<Meme> _memes;
  @override
  @JsonKey()
  List<Meme> get memes {
    if (_memes is EqualUnmodifiableListView) return _memes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memes);
  }

  @override
  String toString() {
    return 'MemeData(memes: $memes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemeData &&
            const DeepCollectionEquality().equals(other._memes, _memes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_memes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemeDataCopyWith<_$_MemeData> get copyWith =>
      __$$_MemeDataCopyWithImpl<_$_MemeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemeDataToJson(
      this,
    );
  }
}

abstract class _MemeData implements MemeData {
  factory _MemeData({final List<Meme> memes}) = _$_MemeData;

  factory _MemeData.fromJson(Map<String, dynamic> json) = _$_MemeData.fromJson;

  @override
  List<Meme> get memes;
  @override
  @JsonKey(ignore: true)
  _$$_MemeDataCopyWith<_$_MemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

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
