import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kimapp/kimapp.dart';

part 'property_category_model.freezed.dart';
part 'property_category_model.g.dart';

@freezed
class PropertyCategoryModel with _$PropertyCategoryModel {
  const PropertyCategoryModel._();

  @TableModel('property_type_categories')
  const factory PropertyCategoryModel({
    @JsonKey(name: 'property_type_category_id') required int id,
    @JsonKey(name: 'category_name') required String name,
    @JsonKey(name: 'sale_count') required int? totalSale,
    @JsonKey(name: 'rent_count') required int? totalRent,
  }) = _PropertyCategoryModel;

  factory PropertyCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyCategoryModelFromJson(json);

  static const TableBuilder table = _tablePropertyCategoryModel;
}
