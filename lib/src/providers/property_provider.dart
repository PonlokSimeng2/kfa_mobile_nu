import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../exports.dart';
import '../models/property_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

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
      .order('created_at', ascending: false)
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
    with
        _$InsertPropertyState,
        ProviderStatusClassMixin<InsertPropertyState, void> {
  const InsertPropertyState._();

  const factory InsertPropertyState({
    required PropertyListingType propertyListingType,
    required String image,
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
    required double houseLength,
    required double houseWidth,
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
        image: '',
        title: '',
        description: '',
        longitude: 0,
        latitude: 0,
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
        houseLength: 0,
        houseWidth: 0,
      );

  Future<ProviderStatus<void>> call() async {
    return await perform<void>(
      (state) async {
        final sb = ref.watch(supabaseProvider).client;
        await sb.from(PropertyModel.table.tableName).insert(
          {
            'listing_type': state.propertyListingType.name,
            'image': state.image,
            'title': state.title,
            'description': state.description,
            'longitude': state.longitude,
            'latitude': state.latitude,
            'price': state.price,
            'sqm': state.sqm,
            'bedrooms': state.bedrooms,
            'bathrooms': state.bathrooms,
            'floors': state.floors,
            'parking': state.parking,
            'price_per_sqm': state.pricePerSqm,
            'living_rooms': state.livingRooms,
            'land_length': state.landLength,
            'land_width': state.landWidth,
            'building_length': state.buildingLength,
            'building_width': state.buildingWidth,
            'house_length': state.houseLength,
            'house_width': state.houseWidth,
          },
        );

        // DateTime.now().toIso8601String();
      },
      onSuccess: (success) {
        ref.invalidate(propertyListProvider);
      },
    );
  }
}
