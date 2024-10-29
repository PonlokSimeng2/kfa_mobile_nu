import 'package:kfa_mobile_nu/exports.dart';

import 'user_model.dart';

export 'user_model.schema.dart';

enum UserRole {
  user,
  admin,
  superAdmin,
}

@Schema(tableName: 'users', className: 'User', baseModelName: 'UserModel')
class UserSchema extends KimappSchema {
  UserSchema._();

  final id = Field<String>('id');
  final userId = Field<String>('user_id');
  final photo = Field<String?>('photo');
  final firstName = Field<String>('first_name');
  final lastName = Field<String>('last_name');
  final email = Field<String>('email');
  final phone = Field<String>('phone');
  final vpoints = Field<int>('vpoints');
  final role = Field<UserRole>('role');
  final joinedAt = Field<DateTime>('joined_at');
  final active = Field<bool>('active');
  final managedBy =
      Field.join<UserLiteModel?>().withForeignKey('managed_by_id');

  @override
  List<Model> get models => [
        Model('UserLiteModel').table().addFields({
          'id': id,
          'photo': photo,
          'firstName': firstName,
          'lastName': lastName,
        }),
      ];
}

extension UserModelX on UserModel {
  String get fullName => '$firstName $lastName';
  bool get isSuperAdmin => role.isSuperAdmin;
  bool get isAdmin => role.isAdmin;
  bool get isUser => role == UserRole.user;
  bool get forAdmin => isAdmin || isSuperAdmin;
}

extension UserRoleX on UserRole {
  bool get isAdmin => this == UserRole.admin || this == UserRole.superAdmin;
  bool get isSuperAdmin => this == UserRole.superAdmin;
}
