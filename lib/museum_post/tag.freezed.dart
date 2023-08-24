// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
  String? get term => throw _privateConstructorUsedError;
  @JsonKey(name: 'AAT_URL')
  String? get aatUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'Wikidata_URL')
  String? get wikidataUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res, Tag>;
  @useResult
  $Res call(
      {String? term,
      @JsonKey(name: 'AAT_URL') String? aatUrl,
      @JsonKey(name: 'Wikidata_URL') String? wikidataUrl});
}

/// @nodoc
class _$TagCopyWithImpl<$Res, $Val extends Tag> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = freezed,
    Object? aatUrl = freezed,
    Object? wikidataUrl = freezed,
  }) {
    return _then(_value.copyWith(
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      aatUrl: freezed == aatUrl
          ? _value.aatUrl
          : aatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikidataUrl: freezed == wikidataUrl
          ? _value.wikidataUrl
          : wikidataUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$_TagCopyWith(_$_Tag value, $Res Function(_$_Tag) then) =
      __$$_TagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? term,
      @JsonKey(name: 'AAT_URL') String? aatUrl,
      @JsonKey(name: 'Wikidata_URL') String? wikidataUrl});
}

/// @nodoc
class __$$_TagCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res, _$_Tag>
    implements _$$_TagCopyWith<$Res> {
  __$$_TagCopyWithImpl(_$_Tag _value, $Res Function(_$_Tag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = freezed,
    Object? aatUrl = freezed,
    Object? wikidataUrl = freezed,
  }) {
    return _then(_$_Tag(
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      aatUrl: freezed == aatUrl
          ? _value.aatUrl
          : aatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikidataUrl: freezed == wikidataUrl
          ? _value.wikidataUrl
          : wikidataUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tag implements _Tag {
  _$_Tag(
      {this.term,
      @JsonKey(name: 'AAT_URL') this.aatUrl,
      @JsonKey(name: 'Wikidata_URL') this.wikidataUrl});

  factory _$_Tag.fromJson(Map<String, dynamic> json) => _$$_TagFromJson(json);

  @override
  final String? term;
  @override
  @JsonKey(name: 'AAT_URL')
  final String? aatUrl;
  @override
  @JsonKey(name: 'Wikidata_URL')
  final String? wikidataUrl;

  @override
  String toString() {
    return 'Tag(term: $term, aatUrl: $aatUrl, wikidataUrl: $wikidataUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tag &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.aatUrl, aatUrl) || other.aatUrl == aatUrl) &&
            (identical(other.wikidataUrl, wikidataUrl) ||
                other.wikidataUrl == wikidataUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, term, aatUrl, wikidataUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagCopyWith<_$_Tag> get copyWith =>
      __$$_TagCopyWithImpl<_$_Tag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagToJson(
      this,
    );
  }
}

abstract class _Tag implements Tag {
  factory _Tag(
      {final String? term,
      @JsonKey(name: 'AAT_URL') final String? aatUrl,
      @JsonKey(name: 'Wikidata_URL') final String? wikidataUrl}) = _$_Tag;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$_Tag.fromJson;

  @override
  String? get term;
  @override
  @JsonKey(name: 'AAT_URL')
  String? get aatUrl;
  @override
  @JsonKey(name: 'Wikidata_URL')
  String? get wikidataUrl;
  @override
  @JsonKey(ignore: true)
  _$$_TagCopyWith<_$_Tag> get copyWith => throw _privateConstructorUsedError;
}
