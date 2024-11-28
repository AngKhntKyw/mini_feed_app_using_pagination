// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyImpl _$$ReplyImplFromJson(Map<String, dynamic> json) => _$ReplyImpl(
      id: (json['id'] as num).toInt(),
      body: json['body'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      post_id: (json['post_id'] as num).toInt(),
      parent_comment_id: (json['parent_comment_id'] as num?)?.toInt(),
      owner: ReplyOwner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReplyImplToJson(_$ReplyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'post_id': instance.post_id,
      'parent_comment_id': instance.parent_comment_id,
      'owner': instance.owner,
    };
