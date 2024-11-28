// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentListImpl _$$CommentListImplFromJson(Map<String, dynamic> json) =>
    _$CommentListImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      has_next_page: json['has_next_page'] as bool,
    );

Map<String, dynamic> _$$CommentListImplToJson(_$CommentListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'cursor': instance.cursor,
      'has_next_page': instance.has_next_page,
    };
