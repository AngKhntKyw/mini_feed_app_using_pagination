import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_owner.freezed.dart';
part 'comment_owner.g.dart';

@unfreezed
class CommentOwner with _$CommentOwner {
  const CommentOwner._();

  factory CommentOwner({
    required int id,
    required String username,
    String? profile_url,
  }) = _CommentOwner;

  factory CommentOwner.fromJson(Map<String, dynamic> json) =>
      _$CommentOwnerFromJson(json);
}
