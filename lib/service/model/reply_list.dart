import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_feed_app/service/model/reply.dart';
part 'reply_list.freezed.dart';
part 'reply_list.g.dart';

@unfreezed
class ReplyList with _$ReplyList {
  const ReplyList._();

  factory ReplyList({
    required List<Reply> data,
    String? cursor,
    required bool has_next_page,
  }) = _ReplyList;

  factory ReplyList.fromJson(Map<String, dynamic> json) =>
      _$ReplyListFromJson(json);
}
