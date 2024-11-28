import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mini_feed_app/service/model/feed.dart';
part 'feed_list.freezed.dart';
part 'feed_list.g.dart';

@unfreezed
class FeedList with _$FeedList {
  const FeedList._();

  factory FeedList({
    required List<Feed> data,
    String? cursor,
    required bool has_next_page,
  }) = _FeedList;

  factory FeedList.fromJson(Map<String, dynamic> json) =>
      _$FeedListFromJson(json);
}
