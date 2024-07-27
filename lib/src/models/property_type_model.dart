import '../../exports.dart';

@Schema(
  tableName: 'properties_types',
  className: 'PropertyType',
  baseModelName: 'PropertyTypeModel',
)
class PropertyTypeSchema extends KimappSchema {
  PropertyTypeSchema._();

  final id = Field<int>('id');
  final name = Field<String>('name');

  @override
  List<Model> get models => [];
}
