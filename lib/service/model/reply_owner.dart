import 'package:freezed_annotation/freezed_annotation.dart';
part 'reply_owner.freezed.dart';
part 'reply_owner.g.dart';

@unfreezed
class ReplyOwner with _$ReplyOwner {
  const ReplyOwner._();

  factory ReplyOwner({
    required int id,
    required String username,
    String? profile_url,
  }) = _ReplyOwner;

  factory ReplyOwner.fromJson(Map<String, dynamic> json) =>
      _$ReplyOwnerFromJson(json);
}
