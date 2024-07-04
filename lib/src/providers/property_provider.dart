import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/property_model.dart';

part 'property_provider.g.dart';

const _limit = 100;

@riverpod
FutureOr<IList<PropertyModel>> propertyList(
  PropertyListRef ref, {
  required int page,
}) async {
  final sb = ref.watch(supabaseProvider).client;

  final offset = page * _limit;

  final result = await sb
      .from(PropertyModel.table.tableName)
      .select(PropertyModel.table.selectStatement)
      .order('created_at', ascending: false)
      .limit(_limit)
      .range(offset, offset + _limit)
      .withConverter((jsons) {
    return jsons.map((e) => PropertyModel.fromJson(e)).toIList();
  });

  return result;
}

@riverpod
PaginatedItem<PropertyModel>? propertyAtIndex(
  PropertyAtIndexRef ref, {
  required int index,
}) {
  final page = index ~/ _limit;

  final pageItems = ref.watch(propertyListProvider(page: page));
  final hasNextPage = ref.exists(propertyListProvider(page: page + 1));

  return PaginatedItem.build(
    pageItems: pageItems,
    limit: _limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}
