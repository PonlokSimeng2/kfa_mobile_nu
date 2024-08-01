import 'package:kimapp/kimapp.dart';

import 'user_model.dart';

export 'property_like_model.schema.dart';

@Schema(
  tableName: 'property_likes',
  className: 'PropertyLike',
  baseModelName: 'PropertyLikeModel',
)
class PropertyViewSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('PropertyViewId');
  final propertyId = Field<String>('property_id');
  final userId = Field<String>('user_id');
  final createdAt = Field<DateTime>('created_at');
  final user = Field.join<UserModel>().withForeignKey('user_id');
}
