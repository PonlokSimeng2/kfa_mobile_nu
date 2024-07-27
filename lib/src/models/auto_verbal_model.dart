import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kimapp/kimapp.dart';

import 'bank_model.dart';
import 'property_type_model.schema.dart';
import 'province_model.schema.dart';
import 'road_model.dart';

export 'auto_verbal_model.schema.dart';

@Schema(
  tableName: 'auto_verbals',
  className: 'AutoVerbal',
  baseModelName: 'AutoVerbalModel',
)
class AutoVerbalSchema extends KimappSchema {
  final id = Field<int>('id');
  final status = Field<PropertyAndAutoVerbalStatus>('status');
  final autoVerbalId = Field<String>('auto_verbal_id');
  final image = Field<List<String>>('images');
  final bankBranch = Field<String?>('bankbranch');
  final latitude = Field<double>('latitude');
  final longitude = Field<double>('longitude');
  final ownerName = Field<String>('owner_name');
  final ownerPhone = Field<String>('owner_phone');
  final bankOfficerName = Field<String?>('bank_officer_name');
  final bankOfficerPhone = Field<String?>('bank_officer_phone');
  final createdAt = Field<DateTime>('created_at');
  final approvedAt = Field<DateTime?>('approved_at');
  final rejectAt = Field<DateTime?>('reject_at');
  final rejectReason = Field<String?>('reject_reason');
  final minValue = Field<double>('min_value');
  final maxValue = Field<double>('max_value');
  final minValueSqm = Field<double>('min_value_sqm');
  final maxValueSqm = Field<double>('max_value_sqm');
  final area = Field<double>('area');
  final buildinglength = Field<double?>('buildinglength');
  final buildingwidth = Field<double?>('buildingwidth');
  final landlength = Field<double>('landlength');
  final landwidth = Field<double>('landwidth');
  final bed = Field<int?>('bed');
  final bath = Field<int?>('bath');
  final livingroom = Field<int?>('livingroom');
  final floor = Field<int?>('floor');

  // Joins
  final propertyType = Field.join<PropertyTypeModel>().withForeignKey('property_type_id');
  final bank = Field.join<BankModel?>().withForeignKey('bank_id');
  final user = Field.join<UserModel?>().withCandidateKey('auto_verbals_user_id_fkey');
  final approvedBy = Field.join<UserModel?>().withForeignKey('approved_by');
  final province = Field.join<ProvinceModel>().withForeignKey('province_id');
  final road = Field.join<RoadModel?>().withForeignKey('road_id');

  @override
  List<Model> get models {
    return [
      Model('CreateAutoVerbalParam')
        ..inheritAllFromBase(
          excepts: [
            id,
            autoVerbalId,
            propertyType,
            bank,
            user,
            approvedBy,
            province,
            road,
            approvedAt,
            rejectAt,
            rejectReason,
            createdAt,
            status,
          ],
        )
        ..addFields({
          'propertyTypeId': Field<int>('property_type_id'),
          'provinceId': Field<int>('province_id'),
          'roadId': Field<int?>('road_id'),
          'bankId': Field<int?>('bank_id'),
          'userId': Field<String>('user_id'),
        }),
      Model('UpdateAutoVerbalParam')
        ..inheritAllFromBase(
          excepts: [
            id,
            autoVerbalId,
            propertyType,
            bank,
            user,
            approvedBy,
            province,
            road,
            approvedAt,
            rejectAt,
            rejectReason,
          ],
        )
        ..addFields({
          'propertyTypeId': Field<int>('property_type_id'),
          'provinceId': Field<int>('province_id'),
          'roadId': Field<int?>('road_id'),
          'bankId': Field<int?>('bank_id'),
        }),
    ];
  }
}
