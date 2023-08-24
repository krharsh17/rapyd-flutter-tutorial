// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemeData _$MemePostFromJson(Map<String, dynamic> json) {
  return _MemePost.fromJson(json);
}

/// @nodoc
mixin _$MemePost {
  bool get success => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemePostCopyWith<MemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemePostCopyWith<$Res> {
  factory $MemePostCopyWith(MemeData value, $Res Function(MemeData) then) =
      _$MemePostCopyWithImpl<$Res, MemeData>;
  @useResult
  $Res call({bool success, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$MemePostCopyWithImpl<$Res, $Val extends MemeData>
    implements $MemePostCopyWith<$Res> {
  _$MemePostCopyWithImpl(this._value, this._then);

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
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MemePostCopyWith<$Res> implements $MemePostCopyWith<$Res> {
  factory _$$_MemePostCopyWith(
          _$_MemePost value, $Res Function(_$_MemePost) then) =
      __$$_MemePostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_MemePostCopyWithImpl<$Res>
    extends _$MemePostCopyWithImpl<$Res, _$_MemePost>
    implements _$$_MemePostCopyWith<$Res> {
  __$$_MemePostCopyWithImpl(
      _$_MemePost _value, $Res Function(_$_MemePost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$_MemePost(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemePost implements _MemePost {
  _$_MemePost({this.success = false, required this.data});

  factory _$_MemePost.fromJson(Map<String, dynamic> json) =>
      _$$_MemePostFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final Data data;

  @override
  String toString() {
    return 'MemePost(success: $success, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemePost &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemePostCopyWith<_$_MemePost> get copyWith =>
      __$$_MemePostCopyWithImpl<_$_MemePost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemePostToJson(
      this,
    );
  }
}

abstract class _MemePost implements MemeData {
  factory _MemePost({final bool success, required final Data data}) =
      _$_MemePost;

  factory _MemePost.fromJson(Map<String, dynamic> json) = _$_MemePost.fromJson;

  @override
  bool get success;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_MemePostCopyWith<_$_MemePost> get copyWith =>
      throw _privateConstructorUsedError;
}
