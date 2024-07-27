import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kfa_mobile_nu/src/models/bank_model.table.dart';
import 'package:kimapp/annotation.dart';
import 'package:kimapp/object/table_builder.dart';

part 'bank_model.freezed.dart';
part 'bank_model.g.dart';

@TableStructure(
  'banks',
  classPrefixName: 'Bank',
  columns: [
    'id',
    'name',
    'bank_branch',
  ],
)
@freezed
class BankModel with _$BankModel {
  const BankModel._();

  @TableModel(BankTable.table)
  factory BankModel({
    @JsonKey(name: BankTable.id) required int id,
    @JsonKey(name: BankTable.name) required String name,
    @JsonKey(name: BankTable.bankBranch) required String? bankBranch,
  }) = _BankModel;

  factory BankModel.fromJson(Map<String, dynamic> json) => _$BankModelFromJson(json);

  static const TableBuilder table = _tableBankModel;
}
