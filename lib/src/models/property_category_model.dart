import 'package:kimapp/kimapp.dart';

export 'property_category_model.schema.dart';

@Schema(
  tableName: 'property_type_categories',
  className: 'PropertyCategory',
  baseModelName: 'PropertyCategoryModel',
)
class PropertyCategorySchema extends KimappSchema {
  PropertyCategorySchema._();

  final id = Field<int>('property_type_category_id');

  final name = Field<String>('category_name');

  final totalSale = Field<int?>('sale_count');

  final totalRent = Field<int?>('rent_count');
}
