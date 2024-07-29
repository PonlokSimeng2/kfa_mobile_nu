import 'package:kimapp/kimapp.dart';
import '../../exports.dart';
import 'property_model.schema.dart';
import 'user_model.dart';

@Schema(
  tableName: 'favorite',
  className: 'Favorite',
  baseModelName: 'FavoriteModel',
)
class FavoriteSchema extends KimappSchema {
  FavoriteSchema._();

  final id = Field<int>('id');
  final userId = Field<String>('user_id');
  final propertyId = Field<String>('property_id');
  final createdAt = Field<DateTime>('created_at');

  // Joins
  final user = Field.join<UserModel>().withForeignKey('user_id');
  final property = Field.join<PropertyModel>().withForeignKey('property_id');

  @override
  List<Model> get models => [
        Model('CreateFavoriteParam')
          ..inheritAllFromBase(
            excepts: [
              id,
              createdAt,
              user,
              property,
            ],
          ),
        Model('UpdateFavoriteParam')
          ..inheritAllFromBase(
            excepts: [
              id,
              createdAt,
              user,
              property,
            ],
          ),
      ];
}
