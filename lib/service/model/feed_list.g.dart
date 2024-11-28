// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedListImpl _$$FeedListImplFromJson(Map<String, dynamic> json) =>
    _$FeedListImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Feed.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      has_next_page: json['has_next_page'] as bool,
    );

Map<String, dynamic> _$$FeedListImplToJson(_$FeedListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'cursor': instance.cursor,
      'has_next_page': instance.has_next_page,
    };
