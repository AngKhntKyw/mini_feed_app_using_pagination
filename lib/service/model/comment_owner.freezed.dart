// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentOwner _$CommentOwnerFromJson(Map<String, dynamic> json) {
  return _CommentOwner.fromJson(json);
}

/// @nodoc
mixin _$CommentOwner {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  set username(String value) => throw _privateConstructorUsedError;
  String? get profile_url => throw _privateConstructorUsedError;
  set profile_url(String? value) => throw _privateConstructorUsedError;

  /// Serializes this CommentOwner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentOwnerCopyWith<CommentOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentOwnerCopyWith<$Res> {
  factory $CommentOwnerCopyWith(
          CommentOwner value, $Res Function(CommentOwner) then) =
      _$CommentOwnerCopyWithImpl<$Res, CommentOwner>;
  @useResult
  $Res call({int id, String username, String? profile_url});
}

/// @nodoc
class _$CommentOwnerCopyWithImpl<$Res, $Val extends CommentOwner>
    implements $CommentOwnerCopyWith<$Res> {
  _$CommentOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? profile_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profile_url: freezed == profile_url
          ? _value.profile_url
          : profile_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentOwnerImplCopyWith<$Res>
    implements $CommentOwnerCopyWith<$Res> {
  factory _$$CommentOwnerImplCopyWith(
          _$CommentOwnerImpl value, $Res Function(_$CommentOwnerImpl) then) =
      __$$CommentOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username, String? profile_url});
}

/// @nodoc
class __$$CommentOwnerImplCopyWithImpl<$Res>
    extends _$CommentOwnerCopyWithImpl<$Res, _$CommentOwnerImpl>
    implements _$$CommentOwnerImplCopyWith<$Res> {
  __$$CommentOwnerImplCopyWithImpl(
      _$CommentOwnerImpl _value, $Res Function(_$CommentOwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? profile_url = freezed,
  }) {
    return _then(_$CommentOwnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profile_url: freezed == profile_url
          ? _value.profile_url
          : profile_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentOwnerImpl extends _CommentOwner {
  _$CommentOwnerImpl(
      {required this.id, required this.username, this.profile_url})
      : super._();

  factory _$CommentOwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentOwnerImplFromJson(json);

  @override
  int id;
  @override
  String username;
  @override
  String? profile_url;

  @override
  String toString() {
    return 'CommentOwner(id: $id, username: $username, profile_url: $profile_url)';
  }

  /// Create a copy of CommentOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentOwnerImplCopyWith<_$CommentOwnerImpl> get copyWith =>
      __$$CommentOwnerImplCopyWithImpl<_$CommentOwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentOwnerImplToJson(
      this,
    );
  }
}

abstract class _CommentOwner extends CommentOwner {
  factory _CommentOwner(
      {required int id,
      required String username,
      String? profile_url}) = _$CommentOwnerImpl;
  _CommentOwner._() : super._();

  factory _CommentOwner.fromJson(Map<String, dynamic> json) =
      _$CommentOwnerImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get username;
  set username(String value);
  @override
  String? get profile_url;
  set profile_url(String? value);

  /// Create a copy of CommentOwner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentOwnerImplCopyWith<_$CommentOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
