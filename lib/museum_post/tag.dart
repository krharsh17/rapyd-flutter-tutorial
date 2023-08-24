import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  factory Tag({
    String? term,
    @JsonKey(name: 'AAT_URL') String? aatUrl,
    @JsonKey(name: 'Wikidata_URL') String? wikidataUrl,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
