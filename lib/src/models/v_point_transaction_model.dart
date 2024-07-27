import 'package:kimapp/kimapp.dart';

export 'v_point_transaction_model.schema.dart';

@Schema(
  tableName: 'v_point_transactions',
  className: 'VPointTransaction',
  baseModelName: 'VPointTransactionModel',
)
class VPointTransactionSchema extends KimappSchema {
  VPointTransactionSchema._();

  final id = Field<int>('id');
  final transactionId = Field<String>('transaction_id');
  final type = Field<String>('type');
  final userId = Field<String>('user_id');
  final vpoints = Field<int>('vpoints');
  final createdAt = Field<DateTime>('created_at');

  @override
  List<Model> get models => [];
}
