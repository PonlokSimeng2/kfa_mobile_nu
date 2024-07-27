import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/bank_model.dart';

part 'bank_provider.g.dart';

@riverpod
FutureOr<IList<BankModel>> bankList(BankListRef ref) async {
  final sb = ref.watch(supabaseProvider).client;
  final result = await sb
      .from(BankModel.table.tableName)
      .select(BankModel.table.selectStatement)
      .order('name', ascending: true)
      .withConverter(
        (jsons) => jsons.map((e) => BankModel.fromJson(e)).toIList(),
      );

  return result;
}
