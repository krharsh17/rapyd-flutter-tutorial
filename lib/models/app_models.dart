import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_models.freezed.dart';
part 'app_models.g.dart';

@freezed
class MemeResponse with _$MemeResponse {
  factory MemeResponse({
    @Default(false) bool success,
    required MemeData data,
   
  }) = _MemeResponse;

  factory MemeResponse.fromJson(Map<String, dynamic> json) =>
      _$MemeResponseFromJson(json);
}

@freezed
class MemeData with _$MemeData {
  factory MemeData({
     @Default([]) List<Meme> memes,
  }) = _MemeData;

  factory MemeData.fromJson(Map<String, dynamic> json) => _$MemeDataFromJson(json);
}

@freezed
class Meme with _$Meme {
  factory Meme({
    required String id,
    required String name,
    required String url,
    required int width,
    required int height,
    @JsonKey(name: 'box_count') required int boxCount,
  }) = _Meme;

  factory Meme.fromJson(Map<String, dynamic> json) => _$MemeFromJson(json);
}
