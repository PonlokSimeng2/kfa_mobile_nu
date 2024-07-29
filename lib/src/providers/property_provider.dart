import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/province_model.schema.dart';
import 'package:kfa_mobile_nu/src/providers/report_provider.dart';
import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/base.dart';
import '../models/property_model.dart';
import 'auth_provider.dart';

part 'property_provider.freezed.dart';
part 'property_provider.g.dart';

const _limit = 100;

@freezed
class PropertyListFilter with _$PropertyListFilter {
  const PropertyListFilter._();

  const factory PropertyListFilter({
    @Default(IListConst([PropertyAndAutoVerbalStatus.approved]))
    IList<PropertyAndAutoVerbalStatus> statuses,
    @Default(IList.empty()) IList<int> propertyIds,
    String? titleOrDescription,
    ProvinceModel? province,
    PropertyTypeModel? propertyType,
    PropertyListingType? listingType,
    double? minPrice,
    double? maxPrice,
    String? userId,
  }) = _PropertyListFilter;
}

@riverpod
FutureOr<IList<PropertyModel>> propertyList(
  PropertyListRef ref, {
  required int page,
  PropertyListFilter? filter,
}) async {
  final sb = ref.watch(supabaseProvider).client;

  final offset = page * _limit;

  var query = sb.from(PropertyModel.table.tableName).select(PropertyModel.table.selectStatement);

  if (filter?.statuses != null && filter!.statuses.isNotEmpty) {
    query = query.inFilter(PropertyTable.status, filter.statuses.map((e) => e.name).toList());
  }

  if (filter?.listingType != null) {
    query = query.eq(PropertyTable.listingType, filter!.listingType!.name);
  }

  if (filter?.province != null) {
    query = query.eq(PropertyTable.provinceId, filter!.province!.id);
  }

  if (filter?.propertyType != null) {
    query = query.eq(PropertyTable.propertyTypeId, filter!.propertyType!.id);
  }

  if (filter?.titleOrDescription != null) {
    final titleLike = "${PropertyTable.title}.ilike.%${filter!.titleOrDescription}%";
    final descriptionLike = "${PropertyTable.description}.ilike.%${filter.titleOrDescription}%";
    query = query.or("$titleLike,$descriptionLike");
  }

  if (filter?.minPrice != null) {
    query = query.gte(PropertyTable.price, filter!.minPrice!);
  }

  if (filter?.maxPrice != null) {
    query = query.lte(PropertyTable.price, filter!.maxPrice!);
  }

  if (filter?.userId != null) {
    query = query.eq(PropertyTable.userId, filter!.userId!);
  }

  if (filter?.propertyIds != null && filter!.propertyIds.isNotEmpty) {
    query = query.inFilter(PropertyTable.id, filter.propertyIds.toList());
  }

  return await query
      .order(PropertyTable.id, ascending: false)
      .limit(_limit)
      .range(offset, offset + _limit)
      .withConverter((jsons) {
    return jsons.map((e) => PropertyModel.fromJson(e)).toIList();
  });
}

@riverpod
PaginatedItem<PropertyModel>? propertyAtIndex(
  PropertyAtIndexRef ref, {
  required int index,
  PropertyListFilter? filter,
}) {
  final page = index ~/ _limit;

  final pageItems = ref.watch(propertyListProvider(page: page, filter: filter));
  final hasNextPage = ref.exists(propertyListProvider(page: page + 1, filter: filter));

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

        final jsonData = CreatePropertyParam(
          listingType: state.propertyListingType,
          images: imageUrls,
          title: state.title,
          description: state.description,
          longitude: state.longitude,
          latitude: state.latitude,
          price: state.price,
          sqm: state.sqm,
          bedrooms: state.bedrooms,
          bathrooms: state.bathrooms,
          floors: state.floors,
          parking: state.parking,
          pricePerSqm: state.pricePerSqm,
          livingRooms: state.livingRooms,
          landLength: state.landLength,
          landWidth: state.landWidth,
          houseLength: state.buildingLength,
          houseWidth: state.buildingWidth,
          userId: userId,
          provinceId: state.province!.id,
          propertyTypeId: state.propertyType!.id,
        ).toJson();

        try {
          await sb.from(PropertyModel.table.tableName).insert(jsonData);
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

@freezed
class UpdatePropertyState
    with _$UpdatePropertyState, ProviderStatusClassMixin<UpdatePropertyState, void> {
  const UpdatePropertyState._();

  const factory UpdatePropertyState({
    required PropertyListingType propertyListingType,
    required IList<XFile> newImageFiles,
    required IList<String> existingImageUrls,
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
  }) = _UpdatePropertyState;

  UpdatePropertyParam toParam({required List<String> imageUrls, required String userId}) {
    return UpdatePropertyParam(
      listingType: propertyListingType,
      images: imageUrls,
      title: title,
      description: description,
      longitude: longitude,
      latitude: latitude,
      price: price,
      sqm: sqm,
      bedrooms: bedrooms,
      bathrooms: bathrooms,
      floors: floors,
      parking: parking,
      pricePerSqm: pricePerSqm,
      livingRooms: livingRooms,
      landLength: landLength,
      landWidth: landWidth,
      houseLength: buildingLength,
      houseWidth: buildingWidth,
      userId: userId,
      provinceId: province!.id,
      propertyTypeId: propertyType!.id,
      createdAt: DateTime.now(),
    );
  }

  @override
  UpdatePropertyState updateStatus(ProviderStatus<void> newStatus) {
    return copyWith(status: newStatus);
  }
}

@kimappForm
@riverpod
class UpdateProperty extends _$UpdateProperty with _$UpdatePropertyForm {
  @override
  UpdatePropertyState build(PropertyModel initial) {
    return UpdatePropertyState(
      propertyListingType: initial.listingType,
      newImageFiles: const IList.empty(),
      existingImageUrls: initial.images.lock,
      province: initial.province,
      propertyType: initial.propertyType,
      title: initial.title,
      description: initial.description,
      longitude: initial.longitude,
      latitude: initial.latitude,
      price: initial.price,
      sqm: initial.sqm,
      bedrooms: initial.bedrooms ?? 0,
      bathrooms: initial.bathrooms ?? 0,
      floors: initial.floors ?? 0,
      parking: initial.parking ?? 0,
      pricePerSqm: initial.pricePerSqm,
      livingRooms: initial.livingRooms ?? 0,
      landLength: initial.landLength,
      landWidth: initial.landWidth,
      buildingLength: initial.houseLength ?? 0,
      buildingWidth: initial.houseWidth ?? 0,
    );
  }

  Future<ProviderStatus<void>> call() async {
    return await perform<void>(
      (state) async {
        if (state.newImageFiles.isEmpty && state.existingImageUrls.isEmpty) throw 'Images is empty';
        final userId = ref.watch(authProvider);
        if (userId == null) throw 'User must be login';
        if (state.province == null) throw 'Province is required';
        if (state.propertyType == null) throw 'Property type is required';
        if (state.title.isEmpty) throw 'Title is required';

        final sb = ref.watch(supabaseProvider).client;

        final List<String> paths = [];
        final List<String> imageUrls = [...state.existingImageUrls];
        // upload new images and get urls
        for (final xFile in state.newImageFiles) {
          final path = xFile.path;
          final file = File(path);
          final newPath = '${DateTime.now().microsecondsSinceEpoch}${p.extension(path)}';

          await sb.storage.from('files').upload(newPath, file);

          paths.add(newPath);
          final imageUrl = sb.storage.from('files').getPublicUrl(newPath);
          imageUrls.add(imageUrl);
        }

        await sb
            .from(PropertyModel.table.tableName)
            .update(state.toParam(imageUrls: imageUrls, userId: userId).toJson())
            .eq(PropertyTable.id, initial.id);
      },
      onSuccess: (success) {
        ref.invalidate(propertyListProvider);
      },
    );
  }
}

@riverpod
class DeleteProperty extends _$DeleteProperty {
  @override
  ProviderStatus<void> build(int propertyId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call() async {
    return await perform(
      (state) async {
        final sb = ref.watch(supabaseProvider).client;
        await sb.from(PropertyModel.table.tableName).delete().eq('id', propertyId);
      },
      onSuccess: (success) {
        ref.invalidate(propertyListProvider);
        ref.invalidate(countPropertyAndAutoVerbalProvider);
      },
    );
  }
}
