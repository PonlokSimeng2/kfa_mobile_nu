import 'package:freezed_annotation/freezed_annotation.dart';

part 'v_point_transaction_model.freezed.dart';
part 'v_point_transaction_model.g.dart';

@freezed
class VPointTransactionModel with _$VPointTransactionModel {
  factory VPointTransactionModel(
      {required int id,
      required String transactionId,
      required String type,
      required String userId,
      required int vpoints,
      required DateTime createdAt}) = _VPointTransactionModel;

  factory VPointTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$VPointTransactionModelFromJson(json);
}
