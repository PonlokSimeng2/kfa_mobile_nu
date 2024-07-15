import 'package:freezed_annotation/freezed_annotation.dart';
import '../../exports.dart';

part 'property_type_model.freezed.dart';
part 'property_type_model.g.dart';

@freezed
class PropertyTypeModel with _$PropertyTypeModel {
  const PropertyTypeModel._();

  @TableModel('properties_types')
  factory PropertyTypeModel({
    required int id,
    required String name,
  }) = _PropertyTypeModel;

  factory PropertyTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyTypeModelFromJson(json);

  static const TableBuilder table = _tablePropertyTypeModel;
}
