import 'package:freezed_annotation/freezed_annotation.dart';

part 'constituent.freezed.dart';
part 'constituent.g.dart';

@freezed
class Constituent with _$Constituent {
  factory Constituent({
    @JsonKey(name: 'constituentID') int? constituentId,
    String? role,
    String? name,
    @JsonKey(name: 'constituentULAN_URL') String? constituentUlanUrl,
    @JsonKey(name: 'constituentWikidata_URL') String? constituentWikidataUrl,
    String? gender,
  }) = _Constituent;

  factory Constituent.fromJson(Map<String, dynamic> json) =>
      _$ConstituentFromJson(json);
}
