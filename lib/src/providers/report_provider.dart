import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/base.dart';

part 'report_provider.g.dart';

@riverpod
FutureOr<({int propertyCount, int autoVerbalCount})> countPropertyAndAutoVerbal(
  CountPropertyAndAutoVerbalRef ref, {
  IList<PropertyAndAutoVerbalStatus> statuses = const IList.empty(),
  String? userId,
}) async {
  final sb = ref.watch(supabaseProvider);
  final result = await sb.client.rpc(
    'count_properties_and_auto_verbals',
    params: {
      'p_status_array': statuses.map((e) => e.name).toList(),
      'p_user_id': userId,
    },
  );

  return (
    propertyCount: result['properties'] as int,
    autoVerbalCount: result['auto_verbals'] as int,
  );
}
