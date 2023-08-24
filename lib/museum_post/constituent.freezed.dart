// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constituent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Constituent _$ConstituentFromJson(Map<String, dynamic> json) {
  return _Constituent.fromJson(json);
}

/// @nodoc
mixin _$Constituent {
  @JsonKey(name: 'constituentID')
  int? get constituentId => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'constituentULAN_URL')
  String? get constituentUlanUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'constituentWikidata_URL')
  String? get constituentWikidataUrl => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstituentCopyWith<Constituent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstituentCopyWith<$Res> {
  factory $ConstituentCopyWith(
          Constituent value, $Res Function(Constituent) then) =
      _$ConstituentCopyWithImpl<$Res, Constituent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'constituentID') int? constituentId,
      String? role,
      String? name,
      @JsonKey(name: 'constituentULAN_URL') String? constituentUlanUrl,
      @JsonKey(name: 'constituentWikidata_URL') String? constituentWikidataUrl,
      String? gender});
}

/// @nodoc
class _$ConstituentCopyWithImpl<$Res, $Val extends Constituent>
    implements $ConstituentCopyWith<$Res> {
  _$ConstituentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? constituentId = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? constituentUlanUrl = freezed,
    Object? constituentWikidataUrl = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      constituentId: freezed == constituentId
          ? _value.constituentId
          : constituentId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      constituentUlanUrl: freezed == constituentUlanUrl
          ? _value.constituentUlanUrl
          : constituentUlanUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      constituentWikidataUrl: freezed == constituentWikidataUrl
          ? _value.constituentWikidataUrl
          : constituentWikidataUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConstituentCopyWith<$Res>
    implements $ConstituentCopyWith<$Res> {
  factory _$$_ConstituentCopyWith(
          _$_Constituent value, $Res Function(_$_Constituent) then) =
      __$$_ConstituentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'constituentID') int? constituentId,
      String? role,
      String? name,
      @JsonKey(name: 'constituentULAN_URL') String? constituentUlanUrl,
      @JsonKey(name: 'constituentWikidata_URL') String? constituentWikidataUrl,
      String? gender});
}

/// @nodoc
class __$$_ConstituentCopyWithImpl<$Res>
    extends _$ConstituentCopyWithImpl<$Res, _$_Constituent>
    implements _$$_ConstituentCopyWith<$Res> {
  __$$_ConstituentCopyWithImpl(
      _$_Constituent _value, $Res Function(_$_Constituent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? constituentId = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? constituentUlanUrl = freezed,
    Object? constituentWikidataUrl = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$_Constituent(
      constituentId: freezed == constituentId
          ? _value.constituentId
          : constituentId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      constituentUlanUrl: freezed == constituentUlanUrl
          ? _value.constituentUlanUrl
          : constituentUlanUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      constituentWikidataUrl: freezed == constituentWikidataUrl
          ? _value.constituentWikidataUrl
          : constituentWikidataUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Constituent implements _Constituent {
  _$_Constituent(
      {@JsonKey(name: 'constituentID') this.constituentId,
      this.role,
      this.name,
      @JsonKey(name: 'constituentULAN_URL') this.constituentUlanUrl,
      @JsonKey(name: 'constituentWikidata_URL') this.constituentWikidataUrl,
      this.gender});

  factory _$_Constituent.fromJson(Map<String, dynamic> json) =>
      _$$_ConstituentFromJson(json);

  @override
  @JsonKey(name: 'constituentID')
  final int? constituentId;
  @override
  final String? role;
  @override
  final String? name;
  @override
  @JsonKey(name: 'constituentULAN_URL')
  final String? constituentUlanUrl;
  @override
  @JsonKey(name: 'constituentWikidata_URL')
  final String? constituentWikidataUrl;
  @override
  final String? gender;

  @override
  String toString() {
    return 'Constituent(constituentId: $constituentId, role: $role, name: $name, constituentUlanUrl: $constituentUlanUrl, constituentWikidataUrl: $constituentWikidataUrl, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Constituent &&
            (identical(other.constituentId, constituentId) ||
                other.constituentId == constituentId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.constituentUlanUrl, constituentUlanUrl) ||
                other.constituentUlanUrl == constituentUlanUrl) &&
            (identical(other.constituentWikidataUrl, constituentWikidataUrl) ||
                other.constituentWikidataUrl == constituentWikidataUrl) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, constituentId, role, name,
      constituentUlanUrl, constituentWikidataUrl, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConstituentCopyWith<_$_Constituent> get copyWith =>
      __$$_ConstituentCopyWithImpl<_$_Constituent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConstituentToJson(
      this,
    );
  }
}

abstract class _Constituent implements Constituent {
  factory _Constituent(
      {@JsonKey(name: 'constituentID') final int? constituentId,
      final String? role,
      final String? name,
      @JsonKey(name: 'constituentULAN_URL') final String? constituentUlanUrl,
      @JsonKey(name: 'constituentWikidata_URL')
      final String? constituentWikidataUrl,
      final String? gender}) = _$_Constituent;

  factory _Constituent.fromJson(Map<String, dynamic> json) =
      _$_Constituent.fromJson;

  @override
  @JsonKey(name: 'constituentID')
  int? get constituentId;
  @override
  String? get role;
  @override
  String? get name;
  @override
  @JsonKey(name: 'constituentULAN_URL')
  String? get constituentUlanUrl;
  @override
  @JsonKey(name: 'constituentWikidata_URL')
  String? get constituentWikidataUrl;
  @override
  String? get gender;
  @override
  @JsonKey(ignore: true)
  _$$_ConstituentCopyWith<_$_Constituent> get copyWith =>
      throw _privateConstructorUsedError;
}
