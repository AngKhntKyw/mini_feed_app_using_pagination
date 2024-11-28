// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyOwnerImpl _$$ReplyOwnerImplFromJson(Map<String, dynamic> json) =>
    _$ReplyOwnerImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      profile_url: json['profile_url'] as String?,
    );

Map<String, dynamic> _$$ReplyOwnerImplToJson(_$ReplyOwnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile_url': instance.profile_url,
    };
