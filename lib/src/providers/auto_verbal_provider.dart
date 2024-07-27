import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.table.dart';
import 'package:kfa_mobile_nu/src/models/bank_model.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/province_model.schema.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/report_provider.dart';
import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';

part 'auto_verbal_provider.freezed.dart';
part 'auto_verbal_provider.g.dart';

const _limit = 100;

@freezed
class AutoVerbalListFilter with _$AutoVerbalListFilter {
  const AutoVerbalListFilter._();

  const factory AutoVerbalListFilter({
    @Default(IListConst([PropertyAndAutoVerbalStatus.approved]))
    IList<PropertyAndAutoVerbalStatus> statuses,
    String? ownerNameOrPhone,
    ProvinceModel? province,
    PropertyTypeModel? propertyType,
    BankModel? bank,
    String? bankBranch,
    double? minValue,
    double? maxValue,
    String? userId,
    double? buildinglength,
    double? buildingwidth,
    double? landlength,
    double? landwidth,
    RoadModel? road,
    double? bed,
    double? bath,
    double? livingroom,
    double? floor,
  }) = _AutoVerbalListFilter;
}

@riverpod
FutureOr<IList<AutoVerbalModel>> autoVerbalList(
  AutoVerbalListRef ref, {
  required int page,
  AutoVerbalListFilter? filter,
}) async {
  final sb = ref.watch(supabaseProvider).client;

  final offset = page * _limit;

  var query =
      sb.from(AutoVerbalModel.table.tableName).select(AutoVerbalModel.table.selectStatement);

  if (filter?.statuses != null && filter!.statuses.isNotEmpty) {
    query = query.inFilter(
      AutoVerbalTable.status,
      filter.statuses.map((e) => e.name).toList(),
    );
  }

  if (filter?.province != null) {
    query = query.eq(AutoVerbalTable.provinceId, filter!.province!.id);
  }

  if (filter?.propertyType != null) {
    query = query.eq(AutoVerbalTable.propertyTypeId, filter!.propertyType!.id);
  }

  if (filter?.bank != null) {
    query = query.eq(AutoVerbalTable.bankId, filter!.bank!.id);
  }

  if (filter?.ownerNameOrPhone.isNotNullOrBlank == true) {
    final nameLike = "${AutoVerbalTable.ownerName}.ilike.%${filter!.ownerNameOrPhone}%";
    final phoneLike = "${AutoVerbalTable.ownerPhone}.ilike.%${filter.ownerNameOrPhone}%";
    query = query.or("$nameLike,$phoneLike");
  }

  if (filter?.minValue != null) {
    query = query.gte(AutoVerbalTable.minValue, filter!.minValue!);
  }

  if (filter?.maxValue != null) {
    query = query.lte(AutoVerbalTable.maxValue, filter!.maxValue!);
  }

  if (filter?.userId != null) {
    query = query.eq(AutoVerbalTable.userId, filter!.userId!);
  }

  return await query
      .order(AutoVerbalTable.createdAt, ascending: false)
      .limit(_limit)
      .range(offset, offset + _limit)
      .withConverter((jsons) {
    return jsons.map((e) => AutoVerbalModel.fromJson(e)).toIList();
  });
}

@riverpod
PaginatedItem<AutoVerbalModel>? autoVerbalAtIndex(
  AutoVerbalAtIndexRef ref, {
  required int index,
  AutoVerbalListFilter? filter,
}) {
  final page = index ~/ _limit;

  final pageItems = ref.watch(autoVerbalListProvider(page: page, filter: filter));
  final hasNextPage = ref.exists(autoVerbalListProvider(page: page + 1, filter: filter));

  return PaginatedItem.build(
    pageItems: pageItems,
    limit: _limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

@freezed
class InsertAutoVerbalState
    with _$InsertAutoVerbalState, ProviderStatusClassMixin<InsertAutoVerbalState, void> {
  const InsertAutoVerbalState._();

  const factory InsertAutoVerbalState({
    required XFile? imageFile,
    required PropertyTypeModel? propertyType,
    required ProvinceModel? province,
    required BankModel? bank,
    required String bankBranch,
    required String ownerName,
    required String ownerPhone,
    required String bankOfficerName,
    required String bankOfficerPhone,
    required double minValue,
    required double maxValue,
    required double minValueSqm,
    required double maxValueSqm,
    required double latitude,
    required double longitude,
    required double area,
    required double buildinglength,
    required double buildingwidth,
    required double landlength,
    required double landwidth,
    required RoadModel? road,
    required double bed,
    required double bath,
    required double livingroom,
    required double floor,
    @Default(ProviderStatus.initial()) ProviderStatus<void> status,
  }) = _InsertAutoVerbalState;
  @override
  InsertAutoVerbalState updateStatus(ProviderStatus<void> newStatus) {
    return copyWith(status: newStatus);
  }
}

@kimappForm
@riverpod
class InsertAutoVerbal extends _$InsertAutoVerbal with _$InsertAutoVerbalForm {
  @override
  InsertAutoVerbalState build() => const InsertAutoVerbalState(
        imageFile: null,
        propertyType: null,
        province: null,
        bank: null,
        bankBranch: '',
        latitude: 11.5564,
        longitude: 104.9282,
        ownerName: '',
        ownerPhone: '',
        minValue: 0,
        maxValue: 0,
        minValueSqm: 0,
        maxValueSqm: 0,
        bankOfficerName: '',
        bankOfficerPhone: '',
        area: 0,
        buildinglength: 0,
        buildingwidth: 0,
        landlength: 0,
        landwidth: 0,
        road: null,
        bed: 0,
        bath: 0,
        livingroom: 0,
        floor: 0,
      );

  Future<ProviderStatus<void>> call() async {
    return await perform<void>(
      (state) async {
        if (state.imageFile == null) throw 'Image is empty';
        final userId = ref.watch(authProvider);
        if (userId == null) throw 'User must be login';
        if (state.province == null) throw 'Province is required';
        if (state.propertyType == null) throw 'Property type is required';
        if (state.ownerName.isEmpty) throw 'Owner name is required';
        if (state.ownerPhone.isEmpty) throw 'Owner phone is required';

        final sb = ref.watch(supabaseProvider).client;

        final path = state.imageFile!.path;
        final file = File(path);
        final newPath = '${DateTime.now().microsecondsSinceEpoch}${p.extension(path)}';

        await sb.storage.from('files').upload(newPath, file);
        final imageUrl = sb.storage.from('files').getPublicUrl(newPath);

        try {
          await sb.from(AutoVerbalModel.table.tableName).insert(
            {
              AutoVerbalTable.propertyTypeId: state.propertyType?.id,
              AutoVerbalTable.provinceId: state.province?.id,
              AutoVerbalTable.image: imageUrl,
              AutoVerbalTable.latitude: state.latitude,
              AutoVerbalTable.longitude: state.longitude,
              AutoVerbalTable.ownerName: state.ownerName,
              AutoVerbalTable.ownerPhone: state.ownerPhone,
              AutoVerbalTable.minValue: state.minValue,
              AutoVerbalTable.maxValue: state.maxValue,
              AutoVerbalTable.minValueSqm: state.minValueSqm,
              AutoVerbalTable.maxValueSqm: state.maxValueSqm,
              AutoVerbalTable.area: state.area,
              AutoVerbalTable.buildinglength: state.buildinglength,
              AutoVerbalTable.buildingwidth: state.buildingwidth,
              AutoVerbalTable.landlength: state.landlength,
              AutoVerbalTable.landwidth: state.landwidth,
              AutoVerbalTable.roadId: state.road?.id,
              AutoVerbalTable.bed: state.bed,
              AutoVerbalTable.bath: state.bath,
              AutoVerbalTable.livingroom: state.livingroom,
              AutoVerbalTable.floor: state.floor,
              AutoVerbalTable.bankOfficerName: state.bankOfficerName,
              AutoVerbalTable.bankOfficerPhone: state.bankOfficerPhone,
              AutoVerbalTable.userId: userId,
              AutoVerbalTable.bankId: state.bank?.id,
              AutoVerbalTable.bankbranch: state.bankBranch,
              AutoVerbalTable.status: PropertyAndAutoVerbalStatus.pending.name,
              AutoVerbalTable.createdAt: DateTime.now().toIso8601String(),
            },
          );
        } catch (e) {
          await sb.storage.from('files').remove([newPath]);
          rethrow;
        }
      },
      onSuccess: (success) {
        ref.invalidate(autoVerbalListProvider);
        ref.invalidate(countPropertyAndAutoVerbalProvider);
      },
    );
  }
}

@freezed
class UpdateAutoVerbalState
    with _$UpdateAutoVerbalState, ProviderStatusClassMixin<UpdateAutoVerbalState, void> {
  const UpdateAutoVerbalState._();

  const factory UpdateAutoVerbalState({
    required XFile? newImageFile,
    required String? existingImageUrl,
    required PropertyTypeModel? propertyType,
    required ProvinceModel? province,
    required BankModel? bank,
    required String bankBranch,
    required String ownerName,
    required String ownerPhone,
    required String bankOfficerName,
    required String bankOfficerPhone,
    required double minValue,
    required double maxValue,
    required double minValueSqm,
    required double maxValueSqm,
    required double latitude,
    required double longitude,
    required double area,
    required double buildinglength,
    required double buildingwidth,
    required double landlength,
    required double landwidth,
    required RoadModel? road,
    required double bed,
    required double bath,
    required double livingroom,
    required double floor,
    @Default(ProviderStatus.initial()) ProviderStatus<void> status,
  }) = _UpdateAutoVerbalState;
  @override
  UpdateAutoVerbalState updateStatus(ProviderStatus<void> newStatus) {
    return copyWith(status: newStatus);
  }
}

@kimappForm
@riverpod
class UpdateAutoVerbal extends _$UpdateAutoVerbal with _$UpdateAutoVerbalForm {
  @override
  UpdateAutoVerbalState build(AutoVerbalModel initial) {
    return UpdateAutoVerbalState(
      newImageFile: null,
      existingImageUrl: initial.image.isNotEmpty ? initial.image : null,
      propertyType: initial.propertyType,
      province: initial.province,
      bank: initial.bank,
      bankBranch: initial.bankBranch ?? '',
      ownerName: initial.ownerName,
      ownerPhone: initial.ownerPhone,
      bankOfficerName: initial.bankOfficerName ?? '',
      bankOfficerPhone: initial.bankOfficerPhone ?? '',
      minValue: initial.minValue,
      maxValue: initial.maxValue,
      minValueSqm: initial.minValueSqm,
      maxValueSqm: initial.maxValueSqm,
      latitude: initial.latitude,
      longitude: initial.longitude,
      area: initial.area,
      buildinglength: initial.buildinglength ?? 0,
      buildingwidth: initial.buildingwidth ?? 0,
      landlength: initial.landlength,
      landwidth: initial.landwidth,
      road: initial.road,
      bed: initial.bed?.toDouble() ?? 0,
      bath: initial.bath?.toDouble() ?? 0,
      livingroom: initial.livingroom?.toDouble() ?? 0,
      floor: initial.floor?.toDouble() ?? 0,
    );
  }

  Future<ProviderStatus<void>> call() async {
    return await perform<void>(
      (state) async {
        if (state.newImageFile == null && state.existingImageUrl == null) {
          throw 'Image is required';
        }
        final userId = ref.watch(authProvider);
        if (userId == null) throw 'User must be login';
        if (state.province == null) throw 'Province is required';
        if (state.propertyType == null) throw 'Property type is required';
        if (state.ownerName.isEmpty) throw 'Owner name is required';
        if (state.ownerPhone.isEmpty) throw 'Owner phone is required';

        final sb = ref.watch(supabaseProvider).client;

        String imageUrl = state.existingImageUrl ?? '';
        if (state.newImageFile != null) {
          final path = state.newImageFile!.path;
          final file = File(path);
          final newPath = '${DateTime.now().microsecondsSinceEpoch}${p.extension(path)}';

          await sb.storage.from('files').upload(newPath, file);
          imageUrl = sb.storage.from('files').getPublicUrl(newPath);
        }

        await sb.from(AutoVerbalModel.table.tableName).update(
          {
            AutoVerbalTable.propertyTypeId: state.propertyType?.id,
            AutoVerbalTable.provinceId: state.province?.id,
            AutoVerbalTable.image: [imageUrl],
            AutoVerbalTable.latitude: state.latitude,
            AutoVerbalTable.longitude: state.longitude,
            AutoVerbalTable.ownerName: state.ownerName,
            AutoVerbalTable.ownerPhone: state.ownerPhone,
            AutoVerbalTable.minValue: state.minValue,
            AutoVerbalTable.maxValue: state.maxValue,
            AutoVerbalTable.minValueSqm: state.minValueSqm,
            AutoVerbalTable.maxValueSqm: state.maxValueSqm,
            AutoVerbalTable.area: state.area,
            AutoVerbalTable.buildinglength: state.buildinglength,
            AutoVerbalTable.buildingwidth: state.buildingwidth,
            AutoVerbalTable.landlength: state.landlength,
            AutoVerbalTable.landwidth: state.landwidth,
            AutoVerbalTable.roadId: state.road?.id,
            AutoVerbalTable.bed: state.bed,
            AutoVerbalTable.bath: state.bath,
            AutoVerbalTable.livingroom: state.livingroom,
            AutoVerbalTable.floor: state.floor,
            AutoVerbalTable.bankOfficerName: state.bankOfficerName,
            AutoVerbalTable.bankOfficerPhone: state.bankOfficerPhone,
            AutoVerbalTable.userId: userId,
            AutoVerbalTable.bankId: state.bank?.id,
            AutoVerbalTable.bankbranch: state.bankBranch,
            AutoVerbalTable.status: PropertyAndAutoVerbalStatus.resubmit.name,
            AutoVerbalTable.createdAt: DateTime.now().toIso8601String(),
          },
        ).eq('id', initial.id);
      },
      onSuccess: (success) {
        ref.invalidate(autoVerbalListProvider);
        ref.invalidate(countPropertyAndAutoVerbalProvider);
      },
    );
  }
}

@riverpod
class DeleteAutoVerbal extends _$DeleteAutoVerbal {
  @override
  ProviderStatus<void> build(int autoVerbalId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call() async {
    return await perform(
      (state) async {
        final sb = ref.watch(supabaseProvider).client;
        await sb.from(AutoVerbalModel.table.tableName).delete().eq('id', autoVerbalId);
      },
      onSuccess: (success) {
        ref.invalidate(autoVerbalListProvider);
        ref.invalidate(countPropertyAndAutoVerbalProvider);
      },
    );
  }
}
