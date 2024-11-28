import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_feed_app/service/model/comment_owner.dart';
import 'package:mini_feed_app/service/model/reply_list.dart';
part 'comment.freezed.dart';
part 'comment.g.dart';

@unfreezed
class Comment with _$Comment {
  const Comment._();

  factory Comment({
    required int id,
    required String body,
    required String created_at,
    required String updated_at,
    required int post_id,
    required int reply_count,
    required CommentOwner owner,
    ReplyList? reply_list,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
