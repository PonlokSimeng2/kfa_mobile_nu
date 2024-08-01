import 'package:kimapp/kimapp.dart';

import 'user_model.dart';

export 'property_comment_model.schema.dart';

@Schema(
  tableName: 'property_comments',
  className: 'PropertyComment',
  baseModelName: 'PropertyCommentModel',
)
class PropertyCommentSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('PropertyCommentId');
  final propertyId = Field<int>('property_id');
  final userId = Field<String>('user_id');
  final createdAt = Field<DateTime>('created_at');
  final content = Field<String>('content');
  final user = Field.join<UserModel>().withForeignKey('user_id');
}
