// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentOwnerImpl _$$CommentOwnerImplFromJson(Map<String, dynamic> json) =>
    _$CommentOwnerImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      profile_url: json['profile_url'] as String?,
    );

Map<String, dynamic> _$$CommentOwnerImplToJson(_$CommentOwnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile_url': instance.profile_url,
    };
