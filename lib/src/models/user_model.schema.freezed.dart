// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: UserModel.idKey)
  String get id;
  @JsonKey(name: UserModel.userIdKey)
  String get userId;
  @JsonKey(name: UserModel.photoKey)
  String? get photo;
  @JsonKey(name: UserModel.rawFirstNameKey)
  String? get rawFirstName;
  @JsonKey(name: UserModel.rawLastNameKey)
  String? get rawLastName;
  @JsonKey(name: UserModel.emailKey)
  String get email;
  @JsonKey(name: UserModel.rawPhoneKey)
  String? get rawPhone;
  @JsonKey(name: UserModel.vpointsKey)
  int get vpoints;
  @JsonKey(name: UserModel.roleKey)
  UserRole get role;
  @JsonKey(name: UserModel.joinedAtKey)
  DateTime get joinedAt;
  @JsonKey(name: UserModel.activeKey)
  bool get active;
  @JoinedColumn(foreignKey: "managed_by_id", candidateKey: null)
  @JsonKey(name: UserModel.managedByKey)
  UserLiteModel? get managedBy;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<UserModel> get copyWith =>
      _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.rawFirstName, rawFirstName) ||
                other.rawFirstName == rawFirstName) &&
            (identical(other.rawLastName, rawLastName) ||
                other.rawLastName == rawLastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rawPhone, rawPhone) ||
                other.rawPhone == rawPhone) &&
            (identical(other.vpoints, vpoints) || other.vpoints == vpoints) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.managedBy, managedBy) ||
                other.managedBy == managedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, photo, rawFirstName,
      rawLastName, email, rawPhone, vpoints, role, joinedAt, active, managedBy);

  @override
  String toString() {
    return 'UserModel(id: $id, userId: $userId, photo: $photo, rawFirstName: $rawFirstName, rawLastName: $rawLastName, email: $email, rawPhone: $rawPhone, vpoints: $vpoints, role: $role, joinedAt: $joinedAt, active: $active, managedBy: $managedBy)';
  }
}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) =
      _$UserModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UserModel.idKey) String id,
      @JsonKey(name: UserModel.userIdKey) String userId,
      @JsonKey(name: UserModel.photoKey) String? photo,
      @JsonKey(name: UserModel.rawFirstNameKey) String? rawFirstName,
      @JsonKey(name: UserModel.rawLastNameKey) String? rawLastName,
      @JsonKey(name: UserModel.emailKey) String email,
      @JsonKey(name: UserModel.rawPhoneKey) String? rawPhone,
      @JsonKey(name: UserModel.vpointsKey) int vpoints,
      @JsonKey(name: UserModel.roleKey) UserRole role,
      @JsonKey(name: UserModel.joinedAtKey) DateTime joinedAt,
      @JsonKey(name: UserModel.activeKey) bool active,
      @JoinedColumn(foreignKey: "managed_by_id", candidateKey: null)
      @JsonKey(name: UserModel.managedByKey)
      UserLiteModel? managedBy});

  $UserLiteModelCopyWith<$Res>? get managedBy;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? photo = freezed,
    Object? rawFirstName = freezed,
    Object? rawLastName = freezed,
    Object? email = null,
    Object? rawPhone = freezed,
    Object? vpoints = null,
    Object? role = null,
    Object? joinedAt = null,
    Object? active = null,
    Object? managedBy = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      rawFirstName: freezed == rawFirstName
          ? _self.rawFirstName
          : rawFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      rawLastName: freezed == rawLastName
          ? _self.rawLastName
          : rawLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      rawPhone: freezed == rawPhone
          ? _self.rawPhone
          : rawPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      vpoints: null == vpoints
          ? _self.vpoints
          : vpoints // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      joinedAt: null == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      managedBy: freezed == managedBy
          ? _self.managedBy
          : managedBy // ignore: cast_nullable_to_non_nullable
              as UserLiteModel?,
    ));
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLiteModelCopyWith<$Res>? get managedBy {
    if (_self.managedBy == null) {
      return null;
    }

    return $UserLiteModelCopyWith<$Res>(_self.managedBy!, (value) {
      return _then(_self.copyWith(managedBy: value));
    });
  }
}

/// @nodoc

@TableModel(UserModel.tableName)
@JsonSerializable(explicitToJson: true)
class _UserModel extends UserModel {
  const _UserModel(
      {@JsonKey(name: UserModel.idKey) required this.id,
      @JsonKey(name: UserModel.userIdKey) required this.userId,
      @JsonKey(name: UserModel.photoKey) required this.photo,
      @JsonKey(name: UserModel.rawFirstNameKey) required this.rawFirstName,
      @JsonKey(name: UserModel.rawLastNameKey) required this.rawLastName,
      @JsonKey(name: UserModel.emailKey) required this.email,
      @JsonKey(name: UserModel.rawPhoneKey) required this.rawPhone,
      @JsonKey(name: UserModel.vpointsKey) required this.vpoints,
      @JsonKey(name: UserModel.roleKey) required this.role,
      @JsonKey(name: UserModel.joinedAtKey) required this.joinedAt,
      @JsonKey(name: UserModel.activeKey) required this.active,
      @JoinedColumn(foreignKey: "managed_by_id", candidateKey: null)
      @JsonKey(name: UserModel.managedByKey)
      required this.managedBy})
      : super._();
  factory _UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  @JsonKey(name: UserModel.idKey)
  final String id;
  @override
  @JsonKey(name: UserModel.userIdKey)
  final String userId;
  @override
  @JsonKey(name: UserModel.photoKey)
  final String? photo;
  @override
  @JsonKey(name: UserModel.rawFirstNameKey)
  final String? rawFirstName;
  @override
  @JsonKey(name: UserModel.rawLastNameKey)
  final String? rawLastName;
  @override
  @JsonKey(name: UserModel.emailKey)
  final String email;
  @override
  @JsonKey(name: UserModel.rawPhoneKey)
  final String? rawPhone;
  @override
  @JsonKey(name: UserModel.vpointsKey)
  final int vpoints;
  @override
  @JsonKey(name: UserModel.roleKey)
  final UserRole role;
  @override
  @JsonKey(name: UserModel.joinedAtKey)
  final DateTime joinedAt;
  @override
  @JsonKey(name: UserModel.activeKey)
  final bool active;
  @override
  @JoinedColumn(foreignKey: "managed_by_id", candidateKey: null)
  @JsonKey(name: UserModel.managedByKey)
  final UserLiteModel? managedBy;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.rawFirstName, rawFirstName) ||
                other.rawFirstName == rawFirstName) &&
            (identical(other.rawLastName, rawLastName) ||
                other.rawLastName == rawLastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rawPhone, rawPhone) ||
                other.rawPhone == rawPhone) &&
            (identical(other.vpoints, vpoints) || other.vpoints == vpoints) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.managedBy, managedBy) ||
                other.managedBy == managedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, photo, rawFirstName,
      rawLastName, email, rawPhone, vpoints, role, joinedAt, active, managedBy);

  @override
  String toString() {
    return 'UserModel(id: $id, userId: $userId, photo: $photo, rawFirstName: $rawFirstName, rawLastName: $rawLastName, email: $email, rawPhone: $rawPhone, vpoints: $vpoints, role: $role, joinedAt: $joinedAt, active: $active, managedBy: $managedBy)';
  }
}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) _then) =
      __$UserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserModel.idKey) String id,
      @JsonKey(name: UserModel.userIdKey) String userId,
      @JsonKey(name: UserModel.photoKey) String? photo,
      @JsonKey(name: UserModel.rawFirstNameKey) String? rawFirstName,
      @JsonKey(name: UserModel.rawLastNameKey) String? rawLastName,
      @JsonKey(name: UserModel.emailKey) String email,
      @JsonKey(name: UserModel.rawPhoneKey) String? rawPhone,
      @JsonKey(name: UserModel.vpointsKey) int vpoints,
      @JsonKey(name: UserModel.roleKey) UserRole role,
      @JsonKey(name: UserModel.joinedAtKey) DateTime joinedAt,
      @JsonKey(name: UserModel.activeKey) bool active,
      @JoinedColumn(foreignKey: "managed_by_id", candidateKey: null)
      @JsonKey(name: UserModel.managedByKey)
      UserLiteModel? managedBy});

  @override
  $UserLiteModelCopyWith<$Res>? get managedBy;
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? photo = freezed,
    Object? rawFirstName = freezed,
    Object? rawLastName = freezed,
    Object? email = null,
    Object? rawPhone = freezed,
    Object? vpoints = null,
    Object? role = null,
    Object? joinedAt = null,
    Object? active = null,
    Object? managedBy = freezed,
  }) {
    return _then(_UserModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      rawFirstName: freezed == rawFirstName
          ? _self.rawFirstName
          : rawFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      rawLastName: freezed == rawLastName
          ? _self.rawLastName
          : rawLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      rawPhone: freezed == rawPhone
          ? _self.rawPhone
          : rawPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      vpoints: null == vpoints
          ? _self.vpoints
          : vpoints // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      joinedAt: null == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      managedBy: freezed == managedBy
          ? _self.managedBy
          : managedBy // ignore: cast_nullable_to_non_nullable
              as UserLiteModel?,
    ));
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLiteModelCopyWith<$Res>? get managedBy {
    if (_self.managedBy == null) {
      return null;
    }

    return $UserLiteModelCopyWith<$Res>(_self.managedBy!, (value) {
      return _then(_self.copyWith(managedBy: value));
    });
  }
}

/// @nodoc
mixin _$UserLiteModel {
  @JsonKey(name: UserLiteModel.idKey)
  String get id;
  @JsonKey(name: UserLiteModel.photoKey)
  String? get photo;
  @JsonKey(name: UserLiteModel.rawFirstNameKey)
  String? get rawFirstName;
  @JsonKey(name: UserLiteModel.rawLastNameKey)
  String? get rawLastName;

  /// Create a copy of UserLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserLiteModelCopyWith<UserLiteModel> get copyWith =>
      _$UserLiteModelCopyWithImpl<UserLiteModel>(
          this as UserLiteModel, _$identity);

  /// Serializes this UserLiteModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLiteModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.rawFirstName, rawFirstName) ||
                other.rawFirstName == rawFirstName) &&
            (identical(other.rawLastName, rawLastName) ||
                other.rawLastName == rawLastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, photo, rawFirstName, rawLastName);

  @override
  String toString() {
    return 'UserLiteModel(id: $id, photo: $photo, rawFirstName: $rawFirstName, rawLastName: $rawLastName)';
  }
}

/// @nodoc
abstract mixin class $UserLiteModelCopyWith<$Res> {
  factory $UserLiteModelCopyWith(
          UserLiteModel value, $Res Function(UserLiteModel) _then) =
      _$UserLiteModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UserLiteModel.idKey) String id,
      @JsonKey(name: UserLiteModel.photoKey) String? photo,
      @JsonKey(name: UserLiteModel.rawFirstNameKey) String? rawFirstName,
      @JsonKey(name: UserLiteModel.rawLastNameKey) String? rawLastName});
}

/// @nodoc
class _$UserLiteModelCopyWithImpl<$Res>
    implements $UserLiteModelCopyWith<$Res> {
  _$UserLiteModelCopyWithImpl(this._self, this._then);

  final UserLiteModel _self;
  final $Res Function(UserLiteModel) _then;

  /// Create a copy of UserLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photo = freezed,
    Object? rawFirstName = freezed,
    Object? rawLastName = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      rawFirstName: freezed == rawFirstName
          ? _self.rawFirstName
          : rawFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      rawLastName: freezed == rawLastName
          ? _self.rawLastName
          : rawLastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@TableModel(UserLiteModel.tableName)
@JsonSerializable(explicitToJson: true)
class _UserLiteModel extends UserLiteModel {
  const _UserLiteModel(
      {@JsonKey(name: UserLiteModel.idKey) required this.id,
      @JsonKey(name: UserLiteModel.photoKey) required this.photo,
      @JsonKey(name: UserLiteModel.rawFirstNameKey) required this.rawFirstName,
      @JsonKey(name: UserLiteModel.rawLastNameKey) required this.rawLastName})
      : super._();
  factory _UserLiteModel.fromJson(Map<String, dynamic> json) =>
      _$UserLiteModelFromJson(json);

  @override
  @JsonKey(name: UserLiteModel.idKey)
  final String id;
  @override
  @JsonKey(name: UserLiteModel.photoKey)
  final String? photo;
  @override
  @JsonKey(name: UserLiteModel.rawFirstNameKey)
  final String? rawFirstName;
  @override
  @JsonKey(name: UserLiteModel.rawLastNameKey)
  final String? rawLastName;

  /// Create a copy of UserLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserLiteModelCopyWith<_UserLiteModel> get copyWith =>
      __$UserLiteModelCopyWithImpl<_UserLiteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserLiteModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLiteModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.rawFirstName, rawFirstName) ||
                other.rawFirstName == rawFirstName) &&
            (identical(other.rawLastName, rawLastName) ||
                other.rawLastName == rawLastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, photo, rawFirstName, rawLastName);

  @override
  String toString() {
    return 'UserLiteModel(id: $id, photo: $photo, rawFirstName: $rawFirstName, rawLastName: $rawLastName)';
  }
}

/// @nodoc
abstract mixin class _$UserLiteModelCopyWith<$Res>
    implements $UserLiteModelCopyWith<$Res> {
  factory _$UserLiteModelCopyWith(
          _UserLiteModel value, $Res Function(_UserLiteModel) _then) =
      __$UserLiteModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserLiteModel.idKey) String id,
      @JsonKey(name: UserLiteModel.photoKey) String? photo,
      @JsonKey(name: UserLiteModel.rawFirstNameKey) String? rawFirstName,
      @JsonKey(name: UserLiteModel.rawLastNameKey) String? rawLastName});
}

/// @nodoc
class __$UserLiteModelCopyWithImpl<$Res>
    implements _$UserLiteModelCopyWith<$Res> {
  __$UserLiteModelCopyWithImpl(this._self, this._then);

  final _UserLiteModel _self;
  final $Res Function(_UserLiteModel) _then;

  /// Create a copy of UserLiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? photo = freezed,
    Object? rawFirstName = freezed,
    Object? rawLastName = freezed,
  }) {
    return _then(_UserLiteModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      rawFirstName: freezed == rawFirstName
          ? _self.rawFirstName
          : rawFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      rawLastName: freezed == rawLastName
          ? _self.rawLastName
          : rawLastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
