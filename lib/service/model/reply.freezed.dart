// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Reply _$ReplyFromJson(Map<String, dynamic> json) {
  return _Reply.fromJson(json);
}

/// @nodoc
mixin _$Reply {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  set body(String value) => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  set created_at(String value) => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  set updated_at(String value) => throw _privateConstructorUsedError;
  int get post_id => throw _privateConstructorUsedError;
  set post_id(int value) => throw _privateConstructorUsedError;
  int? get parent_comment_id => throw _privateConstructorUsedError;
  set parent_comment_id(int? value) => throw _privateConstructorUsedError;
  ReplyOwner get owner => throw _privateConstructorUsedError;
  set owner(ReplyOwner value) => throw _privateConstructorUsedError;

  /// Serializes this Reply to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyCopyWith<Reply> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCopyWith<$Res> {
  factory $ReplyCopyWith(Reply value, $Res Function(Reply) then) =
      _$ReplyCopyWithImpl<$Res, Reply>;
  @useResult
  $Res call(
      {int id,
      String body,
      String created_at,
      String updated_at,
      int post_id,
      int? parent_comment_id,
      ReplyOwner owner});

  $ReplyOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$ReplyCopyWithImpl<$Res, $Val extends Reply>
    implements $ReplyCopyWith<$Res> {
  _$ReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? post_id = null,
    Object? parent_comment_id = freezed,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as int,
      parent_comment_id: freezed == parent_comment_id
          ? _value.parent_comment_id
          : parent_comment_id // ignore: cast_nullable_to_non_nullable
              as int?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ReplyOwner,
    ) as $Val);
  }

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReplyOwnerCopyWith<$Res> get owner {
    return $ReplyOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReplyImplCopyWith<$Res> implements $ReplyCopyWith<$Res> {
  factory _$$ReplyImplCopyWith(
          _$ReplyImpl value, $Res Function(_$ReplyImpl) then) =
      __$$ReplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String body,
      String created_at,
      String updated_at,
      int post_id,
      int? parent_comment_id,
      ReplyOwner owner});

  @override
  $ReplyOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$ReplyImplCopyWithImpl<$Res>
    extends _$ReplyCopyWithImpl<$Res, _$ReplyImpl>
    implements _$$ReplyImplCopyWith<$Res> {
  __$$ReplyImplCopyWithImpl(
      _$ReplyImpl _value, $Res Function(_$ReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? post_id = null,
    Object? parent_comment_id = freezed,
    Object? owner = null,
  }) {
    return _then(_$ReplyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as int,
      parent_comment_id: freezed == parent_comment_id
          ? _value.parent_comment_id
          : parent_comment_id // ignore: cast_nullable_to_non_nullable
              as int?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ReplyOwner,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyImpl extends _Reply {
  _$ReplyImpl(
      {required this.id,
      required this.body,
      required this.created_at,
      required this.updated_at,
      required this.post_id,
      this.parent_comment_id,
      required this.owner})
      : super._();

  factory _$ReplyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyImplFromJson(json);

  @override
  int id;
  @override
  String body;
  @override
  String created_at;
  @override
  String updated_at;
  @override
  int post_id;
  @override
  int? parent_comment_id;
  @override
  ReplyOwner owner;

  @override
  String toString() {
    return 'Reply(id: $id, body: $body, created_at: $created_at, updated_at: $updated_at, post_id: $post_id, parent_comment_id: $parent_comment_id, owner: $owner)';
  }

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyImplCopyWith<_$ReplyImpl> get copyWith =>
      __$$ReplyImplCopyWithImpl<_$ReplyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyImplToJson(
      this,
    );
  }
}

abstract class _Reply extends Reply {
  factory _Reply(
      {required int id,
      required String body,
      required String created_at,
      required String updated_at,
      required int post_id,
      int? parent_comment_id,
      required ReplyOwner owner}) = _$ReplyImpl;
  _Reply._() : super._();

  factory _Reply.fromJson(Map<String, dynamic> json) = _$ReplyImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get body;
  set body(String value);
  @override
  String get created_at;
  set created_at(String value);
  @override
  String get updated_at;
  set updated_at(String value);
  @override
  int get post_id;
  set post_id(int value);
  @override
  int? get parent_comment_id;
  set parent_comment_id(int? value);
  @override
  ReplyOwner get owner;
  set owner(ReplyOwner value);

  /// Create a copy of Reply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyImplCopyWith<_$ReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
