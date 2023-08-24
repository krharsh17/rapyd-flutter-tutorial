import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapyd/models/meme_post/data.dart';

part 'meme_post.freezed.dart';
part 'meme_post.g.dart';

@freezed
class MemeData with _$MemePost {
  factory MemeData({
    @Default(false) bool success,
    required Data data,
  }) = _MemePost;

  factory MemeData.fromJson(Map<String, dynamic> json) =>
      _$MemePostFromJson(json);
}
