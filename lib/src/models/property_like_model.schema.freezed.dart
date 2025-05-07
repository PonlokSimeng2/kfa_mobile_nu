// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_like_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyLikeModel {
  @JsonKey(name: PropertyLikeModel.idKey)
  PropertyViewId get id;
  @JsonKey(name: PropertyLikeModel.propertyIdKey)
  String get propertyId;
  @JsonKey(name: PropertyLikeModel.userIdKey)
  String get userId;
  @JsonKey(name: PropertyLikeModel.createdAtKey)
  DateTime get createdAt;
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyLikeModel.userKey)
  UserModel get user;

  /// Create a copy of PropertyLikeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyLikeModelCopyWith<PropertyLikeModel> get copyWith =>
      _$PropertyLikeModelCopyWithImpl<PropertyLikeModel>(
          this as PropertyLikeModel, _$identity);

  /// Serializes this PropertyLikeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyLikeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, propertyId, userId, createdAt, user);

  @override
  String toString() {
    return 'PropertyLikeModel(id: $id, propertyId: $propertyId, userId: $userId, createdAt: $createdAt, user: $user)';
  }
}

/// @nodoc
abstract mixin class $PropertyLikeModelCopyWith<$Res> {
  factory $PropertyLikeModelCopyWith(
          PropertyLikeModel value, $Res Function(PropertyLikeModel) _then) =
      _$PropertyLikeModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PropertyLikeModel.idKey) PropertyViewId id,
      @JsonKey(name: PropertyLikeModel.propertyIdKey) String propertyId,
      @JsonKey(name: PropertyLikeModel.userIdKey) String userId,
      @JsonKey(name: PropertyLikeModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyLikeModel.userKey)
      UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$PropertyLikeModelCopyWithImpl<$Res>
    implements $PropertyLikeModelCopyWith<$Res> {
  _$PropertyLikeModelCopyWithImpl(this._self, this._then);

  final PropertyLikeModel _self;
  final $Res Function(PropertyLikeModel) _then;

  /// Create a copy of PropertyLikeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as PropertyViewId,
      propertyId: null == propertyId
          ? _self.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of PropertyLikeModel
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

@TableModel(PropertyLikeModel.tableName)
@JsonSerializable(explicitToJson: true)
class _PropertyLikeModel extends PropertyLikeModel {
  const _PropertyLikeModel(
      {@JsonKey(name: PropertyLikeModel.idKey) required this.id,
      @JsonKey(name: PropertyLikeModel.propertyIdKey) required this.propertyId,
      @JsonKey(name: PropertyLikeModel.userIdKey) required this.userId,
      @JsonKey(name: PropertyLikeModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyLikeModel.userKey)
      required this.user})
      : super._();
  factory _PropertyLikeModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyLikeModelFromJson(json);

  @override
  @JsonKey(name: PropertyLikeModel.idKey)
  final PropertyViewId id;
  @override
  @JsonKey(name: PropertyLikeModel.propertyIdKey)
  final String propertyId;
  @override
  @JsonKey(name: PropertyLikeModel.userIdKey)
  final String userId;
  @override
  @JsonKey(name: PropertyLikeModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyLikeModel.userKey)
  final UserModel user;

  /// Create a copy of PropertyLikeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyLikeModelCopyWith<_PropertyLikeModel> get copyWith =>
      __$PropertyLikeModelCopyWithImpl<_PropertyLikeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyLikeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyLikeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, propertyId, userId, createdAt, user);

  @override
  String toString() {
    return 'PropertyLikeModel(id: $id, propertyId: $propertyId, userId: $userId, createdAt: $createdAt, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$PropertyLikeModelCopyWith<$Res>
    implements $PropertyLikeModelCopyWith<$Res> {
  factory _$PropertyLikeModelCopyWith(
          _PropertyLikeModel value, $Res Function(_PropertyLikeModel) _then) =
      __$PropertyLikeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PropertyLikeModel.idKey) PropertyViewId id,
      @JsonKey(name: PropertyLikeModel.propertyIdKey) String propertyId,
      @JsonKey(name: PropertyLikeModel.userIdKey) String userId,
      @JsonKey(name: PropertyLikeModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyLikeModel.userKey)
      UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$PropertyLikeModelCopyWithImpl<$Res>
    implements _$PropertyLikeModelCopyWith<$Res> {
  __$PropertyLikeModelCopyWithImpl(this._self, this._then);

  final _PropertyLikeModel _self;
  final $Res Function(_PropertyLikeModel) _then;

  /// Create a copy of PropertyLikeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_PropertyLikeModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as PropertyViewId,
      propertyId: null == propertyId
          ? _self.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of PropertyLikeModel
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
