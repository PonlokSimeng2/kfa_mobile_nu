import 'package:kfa_mobile_nu/exports.dart';

import 'user_model.dart';

export 'user_model.schema.dart';

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
  final isAdmin = Field<bool>('is_admin');
  final joinedAt = Field<DateTime>('joined_at');

  @override
  List<Model> get models => [
        Model('UserLiteModel').addFields({
          'id': id,
          'photo': photo,
          'firstName': firstName,
          'lastName': lastName,
        }),
      ];
}

extension UserModelX on UserModel {
  String get fullName => '$firstName $lastName';
}
