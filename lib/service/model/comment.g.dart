// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: (json['id'] as num).toInt(),
      body: json['body'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      post_id: (json['post_id'] as num).toInt(),
      reply_count: (json['reply_count'] as num).toInt(),
      owner: CommentOwner.fromJson(json['owner'] as Map<String, dynamic>),
      reply_list: json['reply_list'] == null
          ? null
          : ReplyList.fromJson(json['reply_list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'post_id': instance.post_id,
      'reply_count': instance.reply_count,
      'owner': instance.owner,
      'reply_list': instance.reply_list,
    };
