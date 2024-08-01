import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/property_comment_model.dart';

part 'property_comment_provider.g.dart';

const _limit = 30;

@riverpod
FutureOr<IList<PropertyCommentModel>> propertyCommentList(
  PropertyCommentListRef ref, {
  required int propertyId,
  required int page,
}) async {
  final sb = ref.watch(supabaseProvider).client;
  final offset = page * _limit;
  final table = sb.from(PropertyCommentModel.tableName);
  final result = await table
      .select(PropertyCommentModel.table.selectStatement)
      .eq(PropertyCommentModel.propertyIdKey, propertyId)
      .order(PropertyCommentModel.createdAtKey, ascending: true)
      .limit(_limit)
      .range(offset, offset + _limit)
      .withConverter((e) {
    return e.map((e) => PropertyCommentModel.fromJson(e)).toIList();
  });

  return result.toIList();
}

@riverpod
PaginatedItem<PropertyCommentModel>? propertyCommentAtIndex(
  PropertyCommentAtIndexRef ref, {
  required int propertyId,
  required int index,
}) {
  final page = index ~/ _limit;

  final pageItems = ref.watch(propertyCommentListProvider(propertyId: propertyId, page: page));
  final hasNextPage =
      ref.exists(propertyCommentListProvider(propertyId: propertyId, page: page + 1));

  return PaginatedItem.build(
    pageItems: pageItems,
    limit: _limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

@riverpod
class AddPropertyComment extends _$AddPropertyComment {
  @override
  ProviderStatus<void> build(int propertyId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call(String content) async {
    return await perform(
      (state) async {
        final userId = ref.read(authProvider);
        final sb = ref.read(supabaseProvider).client;
        await sb.from(PropertyCommentModel.tableName).insert(
          {
            PropertyCommentModel.propertyIdKey: propertyId,
            PropertyCommentModel.userIdKey: userId,
            PropertyCommentModel.contentKey: content,
            PropertyCommentModel.createdAtKey: DateTime.now().toIso8601String(),
          },
        );
      },
      onSuccess: (_) {
        ref.invalidate(propertyCommentListProvider);
      },
    );
  }
}

@riverpod
class EditPropertyComment extends _$EditPropertyComment {
  @override
  ProviderStatus<void> build(PropertyCommentId commentId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call({required String newContent}) async {
    return await perform(
      (state) async {
        final sb = ref.read(supabaseProvider).client;
        await sb.from(PropertyCommentModel.tableName).update({
          PropertyCommentModel.contentKey: newContent,
        }).eq(PropertyCommentModel.idKey, commentId);
      },
    );
  }
}

@riverpod
class DeletePropertyComment extends _$DeletePropertyComment {
  @override
  ProviderStatus<void> build(PropertyCommentId commentId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call() async {
    return await perform(
      (state) async {
        final sb = ref.read(supabaseProvider).client;
        await sb
            .from(PropertyCommentModel.tableName)
            .delete()
            .eq(PropertyCommentModel.idKey, commentId);
      },
    );
  }
}
