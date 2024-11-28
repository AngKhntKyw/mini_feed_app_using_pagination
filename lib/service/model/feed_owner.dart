import 'package:freezed_annotation/freezed_annotation.dart';
part 'feed_owner.freezed.dart';
part 'feed_owner.g.dart';

@unfreezed
class FeedOwner with _$FeedOwner {
  const FeedOwner._();

  factory FeedOwner({
    required int id,
    required String username,
    String? profile_url,
  }) = _FeedOwner;

  factory FeedOwner.fromJson(Map<String, dynamic> json) =>
      _$FeedOwnerFromJson(json);
}
