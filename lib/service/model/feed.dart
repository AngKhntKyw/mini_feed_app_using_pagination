import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_feed_app/service/model/comment_list.dart';
import 'package:mini_feed_app/service/model/feed_owner.dart';
part 'feed.freezed.dart';
part 'feed.g.dart';

@unfreezed
class Feed with _$Feed {
  const Feed._();

  factory Feed({
    required int id,
    required String body,
    required String created_at,
    required String updated_at,
    String? media_url,
    required String media_type,
    required int like_count,
    required int comment_count,
    required bool is_liked,
    required FeedOwner owner,
    CommentList? comment_list,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
