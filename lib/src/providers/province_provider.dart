import 'package:kfa_mobile_nu/src/models/province_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';

part 'province_provider.g.dart';

@riverpod
FutureOr<IList<ProvinceModel>> provinceList(ProvinceListRef ref) async {
  final sb = ref.watch(supabaseProvider).client;
  final result = await sb
      .from(ProvinceModel.table.tableName)
      .select(ProvinceModel.table.selectStatement)
      .order('name', ascending: true)
      .withConverter(
        (jsons) => jsons.map((e) => ProvinceModel.fromJson(e)).toIList(),
      );

  return result;
}
