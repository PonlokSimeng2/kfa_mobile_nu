import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/property_like_model.dart';

part 'property_like_provider.g.dart';

const _limit = 30;

@riverpod
FutureOr<IList<PropertyLikeModel>> propertyLikeList(
  PropertyLikeListRef ref, {
  required int propertyId,
  required int page,
}) async {
  final sb = ref.watch(supabaseProvider).client;
  final offset = page * _limit;
  final table = sb.from(PropertyLikeModel.tableName);
  final result = await table
      .select(PropertyLikeModel.table.selectStatement)
      .eq(PropertyLikeModel.propertyIdKey, propertyId)
      .order(PropertyLikeModel.createdAtKey, ascending: false)
      .limit(_limit)
      .range(offset, offset + _limit)
      .withConverter((e) {
    return e.map((e) => PropertyLikeModel.fromJson(e)).toIList();
  });

  return result.toIList();
}

@riverpod
PaginatedItem<PropertyLikeModel>? propertyLikeAtIndex(
  PropertyLikeAtIndexRef ref, {
  required int propertyId,
  required int index,
}) {
  final page = index ~/ _limit;

  final pageItems = ref.watch(propertyLikeListProvider(propertyId: propertyId, page: page));
  final hasNextPage = ref.exists(propertyLikeListProvider(propertyId: propertyId, page: page + 1));

  return PaginatedItem.build(
    pageItems: pageItems,
    limit: _limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

@riverpod
class PropertyLike extends _$PropertyLike {
  @override
  ProviderStatus<void> build(int propertyId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call() async {
    return await perform(
      (state) async {
        final userId = ref.read(authProvider);
        final sb = ref.read(supabaseProvider).client;
        await sb.from(PropertyLikeModel.tableName).upsert(
          {
            PropertyLikeModel.propertyIdKey: propertyId,
            PropertyLikeModel.userIdKey: userId,
            PropertyLikeModel.createdAtKey: DateTime.now().toIso8601String(),
          },
        );
      },
      onSuccess: (_) {
        ref.invalidate(propertyLikeListProvider);
      },
    );
  }
}

@riverpod
class PropertyUnlike extends _$PropertyUnlike {
  @override
  ProviderStatus<void> build(int propertyId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call() async {
    return await perform(
      (state) async {
        final userId = ref.read(authProvider);
        final sb = ref.read(supabaseProvider).client;
        await sb.from(PropertyLikeModel.tableName).delete().match({
          PropertyLikeModel.propertyIdKey: propertyId,
          PropertyLikeModel.userIdKey: userId!,
        });
      },
      onSuccess: (_) {
        ref.invalidate(propertyLikeListProvider);
      },
    );
  }
}
