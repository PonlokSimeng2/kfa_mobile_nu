import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/property_model.dart';
import '../models/property_model.table.dart';

part 'admin_provider.g.dart';

@riverpod
FutureOr<IList<PropertyModel>> pendingPropertyList(PendingPropertyListRef ref) async {
  final sb = ref.watch(supabaseProvider).client;

  final result = await sb
      .from(PropertyModel.table.tableName)
      .select(PropertyModel.table.selectStatement)
      .eq(PropertyTable.status, PropertyStatus.pending) // only pending properties
      .order(PropertyTable.createdAt, ascending: false)
      .withConverter((jsons) {
    return jsons.map((e) => PropertyModel.fromJson(e)).toIList();
  });

  return result;
}

@riverpod
class RejectProperty extends _$RejectProperty {
  @override
  ProviderStatus<void> build(int propertyId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call({
    required String? reason,
  }) async {
    return await perform(
      (state) async {
        final isAdmin = ref.watch(isAdminProvider);
        if (isAdmin != true) {
          throw Exception('User is not admin');
        }

        final sb = ref.watch(supabaseProvider).client;
        await sb.from(PropertyTable.table).update({
          PropertyTable.status: PropertyStatus.rejected,
          PropertyTable.rejectReason: reason,
          PropertyTable.rejectedAt: DateTime.now().toIso8601String(),
        }).eq(PropertyTable.id, propertyId);
      },
      onSuccess: (_) {
        ref.invalidate(pendingPropertyListProvider);
        ref.invalidate(propertyListProvider);
        ref.invalidate(rejectedPropertyListProvider);
      },
    );
  }
}

@riverpod
FutureOr<IList<PropertyModel>> rejectedPropertyList(RejectedPropertyListRef ref) async {
  final sb = ref.watch(supabaseProvider).client;

  final result = await sb
      .from(PropertyModel.table.tableName)
      .select(PropertyModel.table.selectStatement)
      .eq(PropertyTable.status, PropertyStatus.rejected) // only rejected properties
      .order(PropertyTable.rejectedAt, ascending: false)
      .withConverter((jsons) {
    return jsons.map((e) => PropertyModel.fromJson(e)).toIList();
  });

  return result;
}

@riverpod
class ApproveProperty extends _$ApproveProperty {
  @override
  ProviderStatus<void> build(int propertyId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call() async {
    return await perform(
      (state) async {
        final isAdmin = ref.watch(isAdminProvider);
        if (isAdmin != true) {
          throw Exception('User is not admin');
        }

        final sb = ref.watch(supabaseProvider).client;
        final currentUser = await ref.watch(currentUserProvider.future);

        await sb.from(PropertyTable.table).update({
          PropertyTable.status: PropertyStatus.approved,
          PropertyTable.approvedAt: DateTime.now().toIso8601String(),
          PropertyTable.approvedBy: currentUser?.id,
        }).eq(PropertyTable.id, propertyId);
      },
      onSuccess: (_) {
        ref.invalidate(pendingPropertyListProvider);
        ref.invalidate(propertyListProvider);
      },
    );
  }
}
