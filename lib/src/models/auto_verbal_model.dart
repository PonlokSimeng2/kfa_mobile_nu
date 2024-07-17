// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.table.dart';

part 'auto_verbal_model.freezed.dart';
part 'auto_verbal_model.g.dart';

@TableStructure(
  'auto_verbals',
  classPrefixName: 'AutoVerbal',
  columns: [
    'id',
    'auto_verbal_id',
    'image',
    'property_type_id',
    'bank_id',
    'latitude',
    'longitude',
    'user_id',
    'owner_name',
    'owner_phone',
    'bank_officer_name',
    'bank_officer_phone',
    'address',
    'created_at',
  ],
)
@freezed
class AutoVerbalModel with _$AutoVerbalModel {
  const AutoVerbalModel._();

  @TableModel(AutoVerbalTable.table)
  factory AutoVerbalModel({
    @JsonKey(name: AutoVerbalTable.id) required int id,
    @JsonKey(name: AutoVerbalTable.autoVerbalId) required String autoVerbalId,
    @JsonKey(name: AutoVerbalTable.image) required String image,
    @JsonKey(name: AutoVerbalTable.propertyTypeId) required int propertyTypeId,
    @JsonKey(name: AutoVerbalTable.bankId) required int? bankId,
    @JsonKey(name: AutoVerbalTable.latitude) required double latitude,
    @JsonKey(name: AutoVerbalTable.longitude) required double longitude,
    @JsonKey(name: AutoVerbalTable.userId) required String userId,
    @JsonKey(name: AutoVerbalTable.ownerName) required String ownerName,
    @JsonKey(name: AutoVerbalTable.ownerPhone) required String ownerPhone,
    @JsonKey(name: AutoVerbalTable.bankOfficerName) required String? bankOfficerName,
    @JsonKey(name: AutoVerbalTable.bankOfficerPhone) required String? bankOfficerPhone,
    @JsonKey(name: AutoVerbalTable.address) required String address,
    @JsonKey(name: AutoVerbalTable.createdAt) required DateTime createdAt,
  }) = _AutoVerbalModel;

  factory AutoVerbalModel.fromJson(Map<String, dynamic> json) => _$AutoVerbalModelFromJson(json);

  static const TableBuilder table = _tableAutoVerbalModel;
}
