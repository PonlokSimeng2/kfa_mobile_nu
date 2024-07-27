import '../../exports.dart';

@Schema(tableName: 'provinces', className: 'Province', baseModelName: 'ProvinceModel')
class ProvinceSchema extends KimappSchema {
  ProvinceSchema._();

  final id = Field<int>('id');
  final name = Field<String>('name');

  @override
  List<Model> get models => [];
}
