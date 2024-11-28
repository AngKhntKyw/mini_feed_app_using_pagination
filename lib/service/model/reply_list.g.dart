// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyListImpl _$$ReplyListImplFromJson(Map<String, dynamic> json) =>
    _$ReplyListImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Reply.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      has_next_page: json['has_next_page'] as bool,
    );

Map<String, dynamic> _$$ReplyListImplToJson(_$ReplyListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'cursor': instance.cursor,
      'has_next_page': instance.has_next_page,
    };
