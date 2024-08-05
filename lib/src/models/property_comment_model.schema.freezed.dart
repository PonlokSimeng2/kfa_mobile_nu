// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_comment_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyCommentModel _$PropertyCommentModelFromJson(Map<String, dynamic> json) {
  return _PropertyCommentModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyCommentModel {
  @JsonKey(name: PropertyCommentModel.idKey)
  PropertyCommentId get id => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyCommentModel.propertyIdKey)
  int get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyCommentModel.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyCommentModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyCommentModel.contentKey)
  String get content => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyCommentModel.userKey)
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCommentModelCopyWith<PropertyCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCommentModelCopyWith<$Res> {
  factory $PropertyCommentModelCopyWith(PropertyCommentModel value,
          $Res Function(PropertyCommentModel) then) =
      _$PropertyCommentModelCopyWithImpl<$Res, PropertyCommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: PropertyCommentModel.idKey) PropertyCommentId id,
      @JsonKey(name: PropertyCommentModel.propertyIdKey) int propertyId,
      @JsonKey(name: PropertyCommentModel.userIdKey) String userId,
      @JsonKey(name: PropertyCommentModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: PropertyCommentModel.contentKey) String content,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyCommentModel.userKey)
      UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$PropertyCommentModelCopyWithImpl<$Res,
        $Val extends PropertyCommentModel>
    implements $PropertyCommentModelCopyWith<$Res> {
  _$PropertyCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? content = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PropertyCommentId,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyCommentModelImplCopyWith<$Res>
    implements $PropertyCommentModelCopyWith<$Res> {
  factory _$$PropertyCommentModelImplCopyWith(_$PropertyCommentModelImpl value,
          $Res Function(_$PropertyCommentModelImpl) then) =
      __$$PropertyCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PropertyCommentModel.idKey) PropertyCommentId id,
      @JsonKey(name: PropertyCommentModel.propertyIdKey) int propertyId,
      @JsonKey(name: PropertyCommentModel.userIdKey) String userId,
      @JsonKey(name: PropertyCommentModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: PropertyCommentModel.contentKey) String content,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyCommentModel.userKey)
      UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$PropertyCommentModelImplCopyWithImpl<$Res>
    extends _$PropertyCommentModelCopyWithImpl<$Res, _$PropertyCommentModelImpl>
    implements _$$PropertyCommentModelImplCopyWith<$Res> {
  __$$PropertyCommentModelImplCopyWithImpl(_$PropertyCommentModelImpl _value,
      $Res Function(_$PropertyCommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? content = null,
    Object? user = null,
  }) {
    return _then(_$PropertyCommentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PropertyCommentId,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

@TableModel(PropertyCommentModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$PropertyCommentModelImpl extends _PropertyCommentModel {
  const _$PropertyCommentModelImpl(
      {@JsonKey(name: PropertyCommentModel.idKey) required this.id,
      @JsonKey(name: PropertyCommentModel.propertyIdKey)
      required this.propertyId,
      @JsonKey(name: PropertyCommentModel.userIdKey) required this.userId,
      @JsonKey(name: PropertyCommentModel.createdAtKey) required this.createdAt,
      @JsonKey(name: PropertyCommentModel.contentKey) required this.content,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyCommentModel.userKey)
      required this.user})
      : super._();

  factory _$PropertyCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyCommentModelImplFromJson(json);

  @override
  @JsonKey(name: PropertyCommentModel.idKey)
  final PropertyCommentId id;
  @override
  @JsonKey(name: PropertyCommentModel.propertyIdKey)
  final int propertyId;
  @override
  @JsonKey(name: PropertyCommentModel.userIdKey)
  final String userId;
  @override
  @JsonKey(name: PropertyCommentModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: PropertyCommentModel.contentKey)
  final String content;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyCommentModel.userKey)
  final UserModel user;

  @override
  String toString() {
    return 'PropertyCommentModel(id: $id, propertyId: $propertyId, userId: $userId, createdAt: $createdAt, content: $content, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, propertyId, userId, createdAt, content, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyCommentModelImplCopyWith<_$PropertyCommentModelImpl>
      get copyWith =>
          __$$PropertyCommentModelImplCopyWithImpl<_$PropertyCommentModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyCommentModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyCommentModel extends PropertyCommentModel {
  const factory _PropertyCommentModel(
      {@JsonKey(name: PropertyCommentModel.idKey)
      required final PropertyCommentId id,
      @JsonKey(name: PropertyCommentModel.propertyIdKey)
      required final int propertyId,
      @JsonKey(name: PropertyCommentModel.userIdKey)
      required final String userId,
      @JsonKey(name: PropertyCommentModel.createdAtKey)
      required final DateTime createdAt,
      @JsonKey(name: PropertyCommentModel.contentKey)
      required final String content,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyCommentModel.userKey)
      required final UserModel user}) = _$PropertyCommentModelImpl;
  const _PropertyCommentModel._() : super._();

  factory _PropertyCommentModel.fromJson(Map<String, dynamic> json) =
      _$PropertyCommentModelImpl.fromJson;

  @override
  @JsonKey(name: PropertyCommentModel.idKey)
  PropertyCommentId get id;
  @override
  @JsonKey(name: PropertyCommentModel.propertyIdKey)
  int get propertyId;
  @override
  @JsonKey(name: PropertyCommentModel.userIdKey)
  String get userId;
  @override
  @JsonKey(name: PropertyCommentModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: PropertyCommentModel.contentKey)
  String get content;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyCommentModel.userKey)
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$PropertyCommentModelImplCopyWith<_$PropertyCommentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
