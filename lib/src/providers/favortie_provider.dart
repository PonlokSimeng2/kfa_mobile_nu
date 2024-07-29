import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';

part 'favortie_provider.g.dart';

@Riverpod(keepAlive: true)
class FavoriteProperty extends _$FavoriteProperty {
  @override
  FutureOr<IList<int>> build() async {
    final userId = ref.watch(authProvider);
    if (userId == null) return const IList.empty();
    final sb = ref.watch(supabaseProvider);
    final result = await sb.client.from('favorites').select('property_id').eq('user_id', userId);
    return result.map((e) => e['property_id'] as int).toIList();
  }

  Future<void> markAsFavorite(int propertyId) async {
    final userId = ref.watch(authProvider);
    if (userId == null) return;

    // perform side effect
    state = state.whenData((old) {
      return old.contains(propertyId)
          ? old.where((e) => e != propertyId).toIList()
          : old.add(propertyId);
    });

    // Add to database
    final sb = ref.watch(supabaseProvider);
    await sb.client.from('favorites').upsert(
      {
        'user_id': userId,
        'property_id': propertyId,
      },
      ignoreDuplicates: true,
    );
  }

  Future<void> removeFromFavorite(int propertyId) async {
    final userId = ref.watch(authProvider);
    if (userId == null) return;

    // perform side effect
    state = state.whenData((old) {
      return old.contains(propertyId) ? old.where((e) => e != propertyId).toIList() : old;
    });

    // remove from database
    final sb = ref.watch(supabaseProvider);
    await sb.client.from('favorites').delete().eq('user_id', userId).eq('property_id', propertyId);
  }
}

@riverpod
bool isFavorite(IsFavoriteRef ref, int propertyId) {
  return ref.watch(favoritePropertyProvider).valueOrNull?.contains(propertyId) ?? false;
}
