// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.table.dart';
import 'package:kfa_mobile_nu/src/models/bank_model.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.dart';
import 'package:kfa_mobile_nu/src/models/province_model.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';

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
    // 'address',
    'created_at',
    'approved_at',
    'approved_by',
    'reject_at',
    'status',
    'reject_reason',
    'province_id',
    'min_value',
    'max_value',
    'min_value_sqm',
    'max_value_sqm',
    'area',
    'head',
    'length'
  ],
)
@freezed
class AutoVerbalModel with _$AutoVerbalModel {
  const AutoVerbalModel._();

  @TableModel(AutoVerbalTable.table)
  factory AutoVerbalModel({
    @JsonKey(name: AutoVerbalTable.id) required int id,
    @JsonKey(name: AutoVerbalTable.autoVerbalId) required String autoVerbalId,
    @JsonKey(name: AutoVerbalTable.image) required List<String> image,
    @JoinedColumn(foreignKey: AutoVerbalTable.propertyTypeId)
    required PropertyTypeModel propertyType,
    @JoinedColumn(foreignKey: AutoVerbalTable.bankId) BankModel? bank,
    @JsonKey(name: AutoVerbalTable.latitude) required double latitude,
    @JsonKey(name: AutoVerbalTable.longitude) required double longitude,
    @JoinedColumn(foreignKey: AutoVerbalTable.userId) required UserModel? user,
    @JsonKey(name: AutoVerbalTable.ownerName) required String ownerName,
    @JsonKey(name: AutoVerbalTable.ownerPhone) required String ownerPhone,
    @JsonKey(name: AutoVerbalTable.bankOfficerName)
    required String? bankOfficerName,
    @JsonKey(name: AutoVerbalTable.bankOfficerPhone)
    required String? bankOfficerPhone,
    // @JsonKey(name: AutoVerbalTable.address) required String address,
    @JsonKey(name: AutoVerbalTable.createdAt) required DateTime createdAt,
    @JsonKey(name: AutoVerbalTable.approvedAt) DateTime? approvedAt,
    @JoinedColumn(foreignKey: AutoVerbalTable.approvedBy) UserModel? approvedBy,
    @JsonKey(name: AutoVerbalTable.rejectAt) DateTime? rejectAt,
    @JsonKey(name: AutoVerbalTable.status) String? status,
    @JsonKey(name: AutoVerbalTable.rejectReason) String? rejectReason,
    @JoinedColumn(foreignKey: AutoVerbalTable.provinceId)
    required ProvinceModel province,
    @JsonKey(name: AutoVerbalTable.minValue) required double minValue,
    @JsonKey(name: AutoVerbalTable.maxValue) required double maxValue,
    @JsonKey(name: AutoVerbalTable.minValueSqm) required double minValueSqm,
    @JsonKey(name: AutoVerbalTable.maxValueSqm) required double maxValueSqm,
    @JsonKey(name: AutoVerbalTable.area) required double area,
    @JsonKey(name: AutoVerbalTable.head) required double head,
    @JsonKey(name: AutoVerbalTable.length) required double length,
  }) = _AutoVerbalModel;

  factory AutoVerbalModel.fromJson(Map<String, dynamic> json) =>
      _$AutoVerbalModelFromJson(json);

  static const TableBuilder table = _tableAutoVerbalModel;
}
