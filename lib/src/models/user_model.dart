// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/user_model.table.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@TableStructure(
  'users',
  classPrefixName: 'User',
  columns: [
    'id',
    'user_id',
    'photo',
    'first_name',
    'last_name',
    'email',
    'phone',
    'vpoints',
    'is_admin',
    'joined_at',
  ],
)
@freezed
class UserModel with _$UserModel {
  const UserModel._();

  @TableModel(UserTable.table)
  factory UserModel({
    @JsonKey(name: UserTable.id) required String id,
    @JsonKey(name: UserTable.userId) required String userId,
    @JsonKey(name: UserTable.photo) required String? photo,
    @JsonKey(name: UserTable.firstName) required String firstName,
    @JsonKey(name: UserTable.lastName) required String lastName,
    @JsonKey(name: UserTable.email) required String email,
    @JsonKey(name: UserTable.phone) required String phone,
    @JsonKey(name: UserTable.vpoints) required int vpoints,
    @JsonKey(name: UserTable.isAdmin) required bool isAdmin,
    @JsonKey(name: UserTable.joinedAt) required DateTime joinedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  static const TableBuilder table = _tableUserModel;

  String get fullName => '$firstName $lastName';
}
