import 'package:freezed_annotation/freezed_annotation.dart';

import 'constituent.dart';
import 'measurement.dart';
import 'tag.dart';

part 'museum_post.freezed.dart';
part 'museum_post.g.dart';

@freezed
class MuseumPost with _$MuseumPost {
  factory MuseumPost({
    @JsonKey(name: 'objectID') int? objectId,
    bool? isHighlight,
    String? accessionNumber,
    String? accessionYear,
    bool? isPublicDomain,
    String? primaryImage,
    String? primaryImageSmall,
    List<String>? additionalImages,
    List<Constituent>? constituents,
    String? department,
    String? objectName,
    String? title,
    String? culture,
    String? period,
    String? dynasty,
    String? reign,
    String? portfolio,
    String? artistRole,
    String? artistPrefix,
    String? artistDisplayName,
    String? artistDisplayBio,
    String? artistSuffix,
    String? artistAlphaSort,
    String? artistNationality,
    String? artistBeginDate,
    String? artistEndDate,
    String? artistGender,
    @JsonKey(name: 'artistWikidata_URL') String? artistWikidataUrl,
    @JsonKey(name: 'artistULAN_URL') String? artistUlanUrl,
    String? objectDate,
    int? objectBeginDate,
    int? objectEndDate,
    String? medium,
    String? dimensions,
    List<Measurement>? measurements,
    String? creditLine,
    String? geographyType,
    String? city,
    String? state,
    String? county,
    String? country,
    String? region,
    String? subregion,
    String? locale,
    String? locus,
    String? excavation,
    String? river,
    String? classification,
    String? rightsAndReproduction,
    String? linkResource,
    DateTime? metadataDate,
    String? repository,
    @JsonKey(name: 'objectURL') String? objectUrl,
    List<Tag>? tags,
    @JsonKey(name: 'objectWikidata_URL') String? objectWikidataUrl,
    bool? isTimelineWork,
    @JsonKey(name: 'GalleryNumber') String? galleryNumber,
  }) = _MuseumPost;

  factory MuseumPost.fromJson(Map<String, dynamic> json) =>
      _$MuseumPostFromJson(json);
}
