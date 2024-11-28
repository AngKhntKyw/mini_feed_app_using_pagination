// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedOwnerImpl _$$FeedOwnerImplFromJson(Map<String, dynamic> json) =>
    _$FeedOwnerImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      profile_url: json['profile_url'] as String?,
    );

Map<String, dynamic> _$$FeedOwnerImplToJson(_$FeedOwnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile_url': instance.profile_url,
    };
