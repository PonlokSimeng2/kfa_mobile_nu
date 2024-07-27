// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// TableStructureGenerator
// **************************************************************************

// ignore_for_file: invalid_annotation_target, unused_import
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kimapp/kimapp.dart';

import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.table.dart';
import 'package:kfa_mobile_nu/src/models/bank_model.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/province_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/road_model.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'auto_verbal_model.dart';

class AutoVerbalTable {
  const AutoVerbalTable._();

  static const String table = "auto_verbals";

  static const String id = "id";
  static const String autoVerbalId = "auto_verbal_id";
  static const String image = "image";
  static const String propertyTypeId = "property_type_id";
  static const String bankId = "bank_id";
  static const String bankbranch = "bankbranch";
  static const String latitude = "latitude";
  static const String longitude = "longitude";
  static const String userId = "user_id";
  static const String ownerName = "owner_name";
  static const String ownerPhone = "owner_phone";
  static const String bankOfficerName = "bank_officer_name";
  static const String bankOfficerPhone = "bank_officer_phone";
  static const String createdAt = "created_at";
  static const String approvedAt = "approved_at";
  static const String approvedBy = "approved_by";
  static const String rejectAt = "reject_at";
  static const String status = "status";
  static const String rejectReason = "reject_reason";
  static const String provinceId = "province_id";
  static const String minValue = "min_value";
  static const String maxValue = "max_value";
  static const String minValueSqm = "min_value_sqm";
  static const String maxValueSqm = "max_value_sqm";
  static const String area = "area";
  static const String buildinglength = "buildinglength";
  static const String buildingwidth = "buildingwidth";
  static const String landlength = "landlength";
  static const String landwidth = "landwidth";
  static const String roadId = "road_id";
  static const String bed = "bed";
  static const String bath = "bath";
  static const String livingroom = "livingroom";
  static const String floor = "floor";
}
