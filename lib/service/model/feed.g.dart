// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedImpl _$$FeedImplFromJson(Map<String, dynamic> json) => _$FeedImpl(
      id: (json['id'] as num).toInt(),
      body: json['body'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      media_url: json['media_url'] as String?,
      media_type: json['media_type'] as String,
      like_count: (json['like_count'] as num).toInt(),
      comment_count: (json['comment_count'] as num).toInt(),
      is_liked: json['is_liked'] as bool,
      owner: FeedOwner.fromJson(json['owner'] as Map<String, dynamic>),
      comment_list: json['comment_list'] == null
          ? null
          : CommentList.fromJson(json['comment_list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedImplToJson(_$FeedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'media_url': instance.media_url,
      'media_type': instance.media_type,
      'like_count': instance.like_count,
      'comment_count': instance.comment_count,
      'is_liked': instance.is_liked,
      'owner': instance.owner,
      'comment_list': instance.comment_list,
    };
