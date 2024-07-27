import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/base.dart';
import '../models/property_model.dart';
import '../models/user_model.dart';

part 'admin_provider.freezed.dart';
part 'admin_provider.g.dart';

@freezed
class ReportData with _$ReportData {
  const ReportData._();

  const factory ReportData({
    required int totalSale,
    required int totalRent,
  }) = _ReportData;
}

@riverpod
FutureOr<ReportData> reportData(ReportDataRef ref) async {
  final sb = ref.watch(supabaseProvider).client;
  final result = await sb.rpc('get_admin_report');
  final json = result;
  return ReportData(
    totalSale: json['total_sale'],
    totalRent: json['total_rent'],
  );
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
          PropertyTable.status: PropertyAndAutoVerbalStatus.rejected.name,
          PropertyTable.rejectReason: reason,
          PropertyTable.rejectedAt: DateTime.now().toIso8601String(),
        }).eq(PropertyTable.id, propertyId);
      },
      onSuccess: (_) {
        ref.invalidate(propertyListProvider);
      },
    );
  }
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
          PropertyTable.status: PropertyAndAutoVerbalStatus.approved.name,
          PropertyTable.approvedAt: DateTime.now().toIso8601String(),
          PropertyTable.approvedBy: currentUser?.id,
        }).eq(PropertyTable.id, propertyId);
      },
      onSuccess: (_) {
        ref.invalidate(propertyListProvider);
      },
    );
  }
}

@riverpod
FutureOr<IList<UserModel>> userList(
  UserListRef ref, {
  required int page,
  String? searchString,
}) async {
  final sb = ref.watch(supabaseProvider).client;
  const limit = 20;
  final offset = page * limit;

  var query = sb.from(UserModel.table.tableName).select(UserModel.table.selectStatement);

  if (searchString != null && searchString.isNotEmpty) {
    query = query.or(
      'first_name.ilike.%$searchString%,last_name.ilike.%$searchString%,email.ilike.%$searchString%',
    );
  }

  return await query
      .order(UserTable.joinedAt, ascending: false)
      .limit(limit)
      .range(offset, offset + limit)
      .withConverter((jsons) {
    return jsons.map((e) => UserModel.fromJson(e)).toIList();
  });
}

@riverpod
PaginatedItem<UserModel>? userAtIndex(
  UserAtIndexRef ref, {
  required int index,
  String? searchString,
}) {
  const limit = 20;
  final page = index ~/ limit;

  final pageItems = ref.watch(userListProvider(page: page, searchString: searchString));
  final hasNextPage = ref.exists(userListProvider(page: page + 1, searchString: searchString));

  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}
