import 'package:freezed_annotation/freezed_annotation.dart';

part 'meme.freezed.dart';
part 'meme.g.dart';

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
