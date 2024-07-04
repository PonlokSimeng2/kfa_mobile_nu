// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyModelImpl _$$PropertyModelImplFromJson(Map<String, dynamic> json) =>
    _$PropertyModelImpl(
      id: (json['id'] as num).toInt(),
      propertyId: json['property_id'] as String,
      listingType:
          $enumDecode(_$PropertyListingTypeEnumMap, json['listing_type']),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
      description: json['description'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      sqm: (json['sqm'] as num).toDouble(),
      bedrooms: (json['bedrooms'] as num?)?.toInt(),
      bathrooms: (json['bathrooms'] as num?)?.toInt(),
      floors: (json['floors'] as num?)?.toInt(),
      parking: (json['parking'] as num?)?.toInt(),
      livingRooms: (json['living_rooms'] as num?)?.toInt(),
      landLength: (json['land_length'] as num).toDouble(),
      landWidth: (json['land_width'] as num).toDouble(),
      houseLength: (json['house_length'] as num?)?.toDouble(),
      houseWidth: (json['house_width'] as num?)?.toDouble(),
      pricePerSqm: (json['price_per_sqm'] as num).toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      propertyType: PropertyTypeModel.fromJson(
          json['propertyType'] as Map<String, dynamic>),
      province:
          ProvinceModel.fromJson(json['province'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyModelImplToJson(_$PropertyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'property_id': instance.propertyId,
      'listing_type': _$PropertyListingTypeEnumMap[instance.listingType]!,
      'images': instance.images,
      'title': instance.title,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'price': instance.price,
      'sqm': instance.sqm,
      'bedrooms': instance.bedrooms,
      'bathrooms': instance.bathrooms,
      'floors': instance.floors,
      'parking': instance.parking,
      'living_rooms': instance.livingRooms,
      'land_length': instance.landLength,
      'land_width': instance.landWidth,
      'house_length': instance.houseLength,
      'house_width': instance.houseWidth,
      'price_per_sqm': instance.pricePerSqm,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
      'propertyType': instance.propertyType.toJson(),
      'province': instance.province.toJson(),
    };

const _$PropertyListingTypeEnumMap = {
  PropertyListingType.sale: 'sale',
  PropertyListingType.rent: 'rent',
};

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tablePropertyModel = TableBuilder(
  tableName: "properties",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('property_id'),
    ColumnBuilder('listing_type'),
    ColumnBuilder('images'),
    ColumnBuilder('title'),
    ColumnBuilder('description'),
    ColumnBuilder('latitude'),
    ColumnBuilder('longitude'),
    ColumnBuilder('price'),
    ColumnBuilder('sqm'),
    ColumnBuilder('bedrooms'),
    ColumnBuilder('bathrooms'),
    ColumnBuilder('floors'),
    ColumnBuilder('parking'),
    ColumnBuilder('living_rooms'),
    ColumnBuilder('land_length'),
    ColumnBuilder('land_width'),
    ColumnBuilder('house_length'),
    ColumnBuilder('house_width'),
    ColumnBuilder('price_per_sqm'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(UserModel.table,
        key: "user", candidateKey: null, foreignKey: 'user_id'),
    ColumnBuilder.join(PropertyTypeModel.table,
        key: "propertyType",
        candidateKey: null,
        foreignKey: 'property_type_id'),
    ColumnBuilder.join(ProvinceModel.table,
        key: "province", candidateKey: null, foreignKey: 'province_id'),
  ],
);
