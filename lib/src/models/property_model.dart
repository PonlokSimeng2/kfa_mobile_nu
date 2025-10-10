import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kimapp/kimapp.dart';

import 'property_type_model.schema.dart';
import 'province_model.schema.dart';

enum PropertyListingType { sale, rent }

@Schema(
  tableName: 'properties',
  className: 'Property',
  baseModelName: 'PropertyModel',
)
class PropertySchema extends KimappSchema {
  final id = Field<int>('id');
  final status = Field<PropertyAndAutoVerbalStatus>('status');
  final propertyId = Field<String>('property_id');
  final listingType = Field<PropertyListingType>('listing_type');
  final images = Field<List<String>>('images');
  final title = Field<String>('title');
  final description = Field<String>('description');
  final latitude = Field<double>('latitude');
  final longitude = Field<double>('longitude');
  final price = Field<double>('price');
  final sqm = Field<double>('sqm');
  final bedrooms = Field<int?>('bedrooms');
  final bathrooms = Field<int?>('bathrooms');
  final floors = Field<int?>('floors');
  final parking = Field<int?>('parking');
  final livingRooms = Field<int?>('living_rooms');
  final landLength = Field<double>('land_length');
  final landWidth = Field<double>('land_width');
  final houseLength = Field<double?>('house_length');
  final houseWidth = Field<double?>('house_width');
  final pricePerSqm = Field<double>('price_per_sqm');
  final createdAt = Field<DateTime>('created_at');
  final userId = Field<String>('user_id');
  final propertyTypeId = Field<int>('property_type_id');
  final provinceId = Field<int>('province_id');
  final approvedAt = Field<DateTime?>('approved_at');
  final rejectedAt = Field<DateTime?>('rejected_at');
  final rejectReason = Field<String?>('reject_reason');
  final viewCount = Field<int>('view_count');
  final likeCount = Field<int>('like_count');
  final autoVerbalAdded = Field<bool>('auto_verbal_added');
  final hiddenFromHomePage = Field<bool>('hidden_from_home_page');

  // Joins
  final propertyType = Field.join<PropertyTypeModel?>().withForeignKey('property_type_id');
  final province = Field.join<ProvinceModel?>().withForeignKey('province_id');
  final approvedBy = Field.join<UserModel?>().withCandidateKey('properties_approved_by_fkey');
  final user = Field.join<UserModel?>().withForeignKey('user_id');

  @override
  List<Model> get models {
    return [
      Model('CreatePropertyParam')
        ..inheritAllFromBase(
          excepts: [
            id,
            propertyId,
            propertyType,
            user,
            province,
            approvedAt,
            approvedBy,
            rejectedAt,
            rejectReason,
            createdAt,
            status,
            viewCount,
            likeCount,
            autoVerbalAdded,
            hiddenFromHomePage,
          ],
        ),
      Model('UpdatePropertyParam')
        ..inheritAllFromBase(
          excepts: [
            id,
            propertyId,
            propertyType,
            user,
            province,
            approvedAt,
            approvedBy,
            rejectedAt,
            rejectReason,
            status,
            viewCount,
            likeCount,
            autoVerbalAdded,
            hiddenFromHomePage,
          ],
        ),
    ];
  }
}
