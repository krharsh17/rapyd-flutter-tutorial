import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapyd/meme_post/data.dart';
import 'package:rapyd/meme_post/meme.dart';

part 'meme_post.freezed.dart';
part 'meme_post.g.dart';

@freezed
class MemePost with _$MemePost {
  factory MemePost({
    @Default(false) bool success,
    required Data data,
  }) = _MemePost;

  factory MemePost.fromJson(Map<String, dynamic> json) =>
      _$MemePostFromJson(json);
}
