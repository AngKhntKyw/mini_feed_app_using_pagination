import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_feed_app/service/model/reply_owner.dart';
part 'reply.freezed.dart';
part 'reply.g.dart';

@unfreezed
class Reply with _$Reply {
  const Reply._();

  factory Reply({
    required int id,
    required String body,
    required String created_at,
    required String updated_at,
    required int post_id,
    int? parent_comment_id,
    required ReplyOwner owner,
  }) = _Reply;

  factory Reply.fromJson(Map<String, dynamic> json) => _$ReplyFromJson(json);
}
