// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_comment_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyCommentModel {
  @JsonKey(name: PropertyCommentModel.idKey)
  PropertyCommentId get id;
  @JsonKey(name: PropertyCommentModel.propertyIdKey)
  int get propertyId;
  @JsonKey(name: PropertyCommentModel.userIdKey)
  String get userId;
  @JsonKey(name: PropertyCommentModel.createdAtKey)
  DateTime get createdAt;
  @JsonKey(name: PropertyCommentModel.contentKey)
  String get content;
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyCommentModel.userKey)
  UserModel get user;

  /// Create a copy of PropertyCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyCommentModelCopyWith<PropertyCommentModel> get copyWith =>
      _$PropertyCommentModelCopyWithImpl<PropertyCommentModel>(
          this as PropertyCommentModel, _$identity);

  /// Serializes this PropertyCommentModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyCommentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, propertyId, userId, createdAt, content, user);

  @override
  String toString() {
    return 'PropertyCommentModel(id: $id, propertyId: $propertyId, userId: $userId, createdAt: $createdAt, content: $content, user: $user)';
  }
}

/// @nodoc
abstract mixin class $PropertyCommentModelCopyWith<$Res> {
  factory $PropertyCommentModelCopyWith(PropertyCommentModel value,
          $Res Function(PropertyCommentModel) _then) =
      _$PropertyCommentModelCopyWithImpl;
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
class _$PropertyCommentModelCopyWithImpl<$Res>
    implements $PropertyCommentModelCopyWith<$Res> {
  _$PropertyCommentModelCopyWithImpl(this._self, this._then);

  final PropertyCommentModel _self;
  final $Res Function(PropertyCommentModel) _then;

  /// Create a copy of PropertyCommentModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as PropertyCommentId,
      propertyId: null == propertyId
          ? _self.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of PropertyCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc

@TableModel(PropertyCommentModel.tableName)
@JsonSerializable(explicitToJson: true)
class _PropertyCommentModel extends PropertyCommentModel {
  const _PropertyCommentModel(
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
  factory _PropertyCommentModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyCommentModelFromJson(json);

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

  /// Create a copy of PropertyCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyCommentModelCopyWith<_PropertyCommentModel> get copyWith =>
      __$PropertyCommentModelCopyWithImpl<_PropertyCommentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyCommentModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyCommentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, propertyId, userId, createdAt, content, user);

  @override
  String toString() {
    return 'PropertyCommentModel(id: $id, propertyId: $propertyId, userId: $userId, createdAt: $createdAt, content: $content, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$PropertyCommentModelCopyWith<$Res>
    implements $PropertyCommentModelCopyWith<$Res> {
  factory _$PropertyCommentModelCopyWith(_PropertyCommentModel value,
          $Res Function(_PropertyCommentModel) _then) =
      __$PropertyCommentModelCopyWithImpl;
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
class __$PropertyCommentModelCopyWithImpl<$Res>
    implements _$PropertyCommentModelCopyWith<$Res> {
  __$PropertyCommentModelCopyWithImpl(this._self, this._then);

  final _PropertyCommentModel _self;
  final $Res Function(_PropertyCommentModel) _then;

  /// Create a copy of PropertyCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? content = null,
    Object? user = null,
  }) {
    return _then(_PropertyCommentModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as PropertyCommentId,
      propertyId: null == propertyId
          ? _self.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of PropertyCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
