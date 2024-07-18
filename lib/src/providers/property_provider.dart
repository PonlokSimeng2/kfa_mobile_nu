import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/property_model.dart';
import '../models/property_model.table.dart';
import '../models/property_type_model.dart';
import '../models/province_model.dart';
import 'auth_provider.dart';

part 'property_provider.freezed.dart';
part 'property_provider.g.dart';

const _limit = 100;

@riverpod
FutureOr<IList<PropertyModel>> propertyList(
  PropertyListRef ref, {
  required int page,
}) async {
  final sb = ref.watch(supabaseProvider).client;

  final offset = page * _limit;

  final result = await sb
      .from(PropertyModel.table.tableName)
      .select(PropertyModel.table.selectStatement)
      .eq(PropertyTable.status, PropertyStatus.approved) // only approved property
      .order(PropertyTable.createdAt, ascending: false)
      .limit(_limit)
      .range(offset, offset + _limit)
      .withConverter((jsons) {
    return jsons.map((e) => PropertyModel.fromJson(e)).toIList();
  });

  return result;
}

@riverpod
PaginatedItem<PropertyModel>? propertyAtIndex(
  PropertyAtIndexRef ref, {
  required int index,
}) {
  final page = index ~/ _limit;

  final pageItems = ref.watch(propertyListProvider(page: page));
  final hasNextPage = ref.exists(propertyListProvider(page: page + 1));

  return PaginatedItem.build(
    pageItems: pageItems,
    limit: _limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

@freezed
class InsertPropertyState
    with _$InsertPropertyState, ProviderStatusClassMixin<InsertPropertyState, void> {
  const InsertPropertyState._();

  const factory InsertPropertyState({
    required PropertyListingType propertyListingType,
    required IList<XFile> imageFiles,
    required ProvinceModel? province,
    required PropertyTypeModel? propertyType,
    required String title,
    required String description,
    required double longitude,
    required double latitude,
    required double price,
    required double sqm,
    required int bedrooms,
    required int bathrooms,
    required int floors,
    required int parking,
    required double pricePerSqm,
    required int livingRooms,
    required double landLength,
    required double landWidth,
    required double buildingLength,
    required double buildingWidth,
    @Default(ProviderStatus.initial()) ProviderStatus<void> status,
  }) = _InsertPropertyState;
  @override
  InsertPropertyState updateStatus(ProviderStatus<void> newStatus) {
    return copyWith(status: newStatus);
  }
}

@kimappForm
@riverpod
class InsertProperty extends _$InsertProperty with _$InsertPropertyForm {
  @override
  InsertPropertyState build() => const InsertPropertyState(
        propertyListingType: PropertyListingType.rent,
        imageFiles: IList.empty(),
        province: null,
        propertyType: null,
        title: '',
        description: '',
        longitude: 104.9282,
        latitude: 11.5564,
        price: 0,
        sqm: 0,
        bedrooms: 0,
        bathrooms: 0,
        floors: 0,
        parking: 0,
        pricePerSqm: 0,
        livingRooms: 0,
        landLength: 0,
        landWidth: 0,
        buildingLength: 0,
        buildingWidth: 0,
      );

  Future<ProviderStatus<void>> call() async {
    return await perform<void>(
      (state) async {
        if (state.imageFiles.isEmpty) throw 'Images is empty';
        final userId = ref.watch(authProvider);
        if (userId == null) throw 'User must be login';
        if (state.province == null) throw 'Province is required';
        if (state.propertyType == null) throw 'Property type is required';
        if (state.title.isEmpty) throw 'Title is required';

        final sb = ref.watch(supabaseProvider).client;

        final List<String> paths = [];
        final List<String> imageUrls = [];
        // upload image and get url
        for (final xFile in state.imageFiles) {
          final path = xFile.path;
          final file = File(path);
          final newPath = '${DateTime.now().microsecondsSinceEpoch}${p.extension(path)}';

          await sb.storage.from('files').upload(newPath, file);

          paths.add(newPath);
          final imageUrl = sb.storage.from('files').getPublicUrl(newPath);
          imageUrls.add(imageUrl);
        }

        try {
          await sb.from(PropertyModel.table.tableName).insert(
            {
              PropertyTable.listingType: state.propertyListingType.name,
              PropertyTable.images: imageUrls,
              PropertyTable.title: state.title,
              PropertyTable.description: state.description,
              PropertyTable.longitude: state.longitude,
              PropertyTable.latitude: state.latitude,
              PropertyTable.price: state.price,
              PropertyTable.sqm: state.sqm,
              PropertyTable.bedrooms: state.bedrooms,
              PropertyTable.bathrooms: state.bathrooms,
              PropertyTable.floors: state.floors,
              PropertyTable.parking: state.parking,
              PropertyTable.pricePerSqm: state.pricePerSqm,
              PropertyTable.livingRooms: state.livingRooms,
              PropertyTable.landLength: state.landLength,
              PropertyTable.landWidth: state.landWidth,
              PropertyTable.houseLength: state.buildingLength,
              PropertyTable.houseWidth: state.buildingWidth,
              PropertyTable.userId: userId,
              PropertyTable.provinceId: state.province!.id,
              PropertyTable.propertyTypeId: state.propertyType!.id,
            },
          );
        } catch (e) {
          // delete uploaded images
          await sb.storage.from('files').remove(paths);
          rethrow;
        }
      },
      onSuccess: (success) {
        ref.invalidate(propertyListProvider);
      },
    );
  }
}
