import 'package:kfa_mobile_nu/src/models/property_type_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';

part 'property_type_provider.g.dart';

@riverpod
FutureOr<IList<PropertyTypeModel>> propertyTypeList(
    PropertyTypeListRef ref) async {
  final sb = ref.watch(supabaseProvider).client;
  final result = await sb
      .from(PropertyTypeModel.table.tableName)
      .select(PropertyTypeModel.table.selectStatement)
      .order('name', ascending: true)
      .withConverter(
        (jsons) => jsons.map((e) => PropertyTypeModel.fromJson(e)).toIList(),
      );

  return result;
}
