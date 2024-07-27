import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/road_model.dart';

part 'road_provider.g.dart';

@riverpod
FutureOr<IList<RoadModel>> roadList(RoadListRef ref) async {
  final sb = ref.watch(supabaseProvider).client;
  final result = await sb
      .from(RoadModel.table.tableName)
      .select(RoadModel.table.selectStatement)
      .order('name', ascending: true)
      .withConverter(
        (jsons) => jsons.map((e) => RoadModel.fromJson(e)).toIList(),
      );

  return result;
}
