import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/property_category_model.dart';

part 'property_category_provider.g.dart';

@riverpod
FutureOr<IList<PropertyCategoryModel>> propertyCategoryList(
  PropertyCategoryListRef ref,
) async {
  final sb = ref.watch(supabaseProvider);

  final query = sb.client.rpc('generate_properties_report').order('category_name', ascending: true);

  return await query.withConverter((jsons) {
    return IList.fromJson(
      jsons,
      (e) => PropertyCategoryModel.fromJson(e as Map<String, dynamic>),
    );
  });
}
