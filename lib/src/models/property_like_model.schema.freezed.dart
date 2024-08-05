// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_like_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyLikeModel _$PropertyLikeModelFromJson(Map<String, dynamic> json) {
  return _PropertyLikeModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyLikeModel {
  @JsonKey(name: PropertyLikeModel.idKey)
  PropertyViewId get id => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyLikeModel.propertyIdKey)
  String get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyLikeModel.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyLikeModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyLikeModel.userKey)
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyLikeModelCopyWith<PropertyLikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyLikeModelCopyWith<$Res> {
  factory $PropertyLikeModelCopyWith(
          PropertyLikeModel value, $Res Function(PropertyLikeModel) then) =
      _$PropertyLikeModelCopyWithImpl<$Res, PropertyLikeModel>;
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
class _$PropertyLikeModelCopyWithImpl<$Res, $Val extends PropertyLikeModel>
    implements $PropertyLikeModelCopyWith<$Res> {
  _$PropertyLikeModelCopyWithImpl(this._value, this._then);

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
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PropertyViewId,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$PropertyLikeModelImplCopyWith<$Res>
    implements $PropertyLikeModelCopyWith<$Res> {
  factory _$$PropertyLikeModelImplCopyWith(_$PropertyLikeModelImpl value,
          $Res Function(_$PropertyLikeModelImpl) then) =
      __$$PropertyLikeModelImplCopyWithImpl<$Res>;
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
class __$$PropertyLikeModelImplCopyWithImpl<$Res>
    extends _$PropertyLikeModelCopyWithImpl<$Res, _$PropertyLikeModelImpl>
    implements _$$PropertyLikeModelImplCopyWith<$Res> {
  __$$PropertyLikeModelImplCopyWithImpl(_$PropertyLikeModelImpl _value,
      $Res Function(_$PropertyLikeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(_$PropertyLikeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PropertyViewId,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

@TableModel(PropertyLikeModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$PropertyLikeModelImpl extends _PropertyLikeModel {
  const _$PropertyLikeModelImpl(
      {@JsonKey(name: PropertyLikeModel.idKey) required this.id,
      @JsonKey(name: PropertyLikeModel.propertyIdKey) required this.propertyId,
      @JsonKey(name: PropertyLikeModel.userIdKey) required this.userId,
      @JsonKey(name: PropertyLikeModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyLikeModel.userKey)
      required this.user})
      : super._();

  factory _$PropertyLikeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyLikeModelImplFromJson(json);

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

  @override
  String toString() {
    return 'PropertyLikeModel(id: $id, propertyId: $propertyId, userId: $userId, createdAt: $createdAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyLikeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, propertyId, userId, createdAt, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyLikeModelImplCopyWith<_$PropertyLikeModelImpl> get copyWith =>
      __$$PropertyLikeModelImplCopyWithImpl<_$PropertyLikeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyLikeModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyLikeModel extends PropertyLikeModel {
  const factory _PropertyLikeModel(
      {@JsonKey(name: PropertyLikeModel.idKey) required final PropertyViewId id,
      @JsonKey(name: PropertyLikeModel.propertyIdKey)
      required final String propertyId,
      @JsonKey(name: PropertyLikeModel.userIdKey) required final String userId,
      @JsonKey(name: PropertyLikeModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyLikeModel.userKey)
      required final UserModel user}) = _$PropertyLikeModelImpl;
  const _PropertyLikeModel._() : super._();

  factory _PropertyLikeModel.fromJson(Map<String, dynamic> json) =
      _$PropertyLikeModelImpl.fromJson;

  @override
  @JsonKey(name: PropertyLikeModel.idKey)
  PropertyViewId get id;
  @override
  @JsonKey(name: PropertyLikeModel.propertyIdKey)
  String get propertyId;
  @override
  @JsonKey(name: PropertyLikeModel.userIdKey)
  String get userId;
  @override
  @JsonKey(name: PropertyLikeModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyLikeModel.userKey)
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$PropertyLikeModelImplCopyWith<_$PropertyLikeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
