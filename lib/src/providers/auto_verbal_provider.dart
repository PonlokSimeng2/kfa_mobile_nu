import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/src/helpers/date_time_helper.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
import 'package:kfa_mobile_nu/src/models/bank_model.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/property_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/province_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/road_model.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/report_provider.dart';
import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';

part 'auto_verbal_provider.freezed.dart';
part 'auto_verbal_provider.g.dart';

const _limit = 100;

@freezed
sealed class AutoVerbalListFilter with _$AutoVerbalListFilter {
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
    DateTime? dateFrom,
    DateTime? dateTo,
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

  var query = sb
      .from(AutoVerbalModel.table.tableName)
      .select(AutoVerbalModel.table.selectStatement)
      .isFilter('deleted_at', null);

  if (filter?.statuses != null && filter!.statuses.isNotEmpty) {
    query = query.inFilter(
      AutoVerbalTable.status,
      filter.statuses.map((e) => e.name).toList(),
    );
  }

  if (filter?.province != null) {
    query = query.eq('province_id', filter!.province!.id);
  }

  if (filter?.propertyType != null) {
    query = query.eq('property_type_id', filter!.propertyType!.id);
  }

  if (filter?.bank != null) {
    query = query.eq('bank_id', filter!.bank!.id);
  }

  if (filter?.ownerNameOrPhone.isNotNullOrBlank == true) {
    final nameLike =
        "${AutoVerbalTable.ownerName}.ilike.%${filter!.ownerNameOrPhone}%";
    final phoneLike =
        "${AutoVerbalTable.ownerPhone}.ilike.%${filter.ownerNameOrPhone}%";
    query = query.or("$nameLike,$phoneLike");
  }

  if (filter?.minValue != null) {
    query = query.gte(AutoVerbalTable.minValue, filter!.minValue!);
  }

  if (filter?.maxValue != null) {
    query = query.lte(AutoVerbalTable.maxValue, filter!.maxValue!);
  }

  if (filter?.userId != null) {
    query = query.eq('user_id', filter!.userId!);
  }

  if (filter?.dateFrom != null) {
    query = query.gte(
      AutoVerbalTable.createdAt,
      filter!.dateFrom!.firstMinuteOfDay().toIso8601String(),
    );
  }

  if (filter?.dateTo != null) {
    query = query.lte(AutoVerbalTable.createdAt,
        filter!.dateTo!.lastMinuteOfDay().toIso8601String());
  }

  return await query
      .order(AutoVerbalTable.id, ascending: false)
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

  final pageItems =
      ref.watch(autoVerbalListProvider(page: page, filter: filter));
  final hasNextPage =
      ref.exists(autoVerbalListProvider(page: page + 1, filter: filter));

  return PaginatedItem.build(
    pageItems: pageItems,
    limit: _limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

@freezed
sealed class InsertAutoVerbalState
    with
        _$InsertAutoVerbalState,
        ProviderStatusClassMixin<InsertAutoVerbalState, void> {
  const InsertAutoVerbalState._();

  const factory InsertAutoVerbalState({
    // only useful when copy from property
    @Default(IList.empty()) IList<String> existingImageUrls,
    int? propertyId,
    required IList<XFile> imageFiles,
    required PropertyTypeModel? propertyType,
    required ProvinceModel? province,
    required BankModel? bank,
    required String? bankBranch,
    required String? ownerName,
    required String? ownerPhone,
    required String? bankOfficerName,
    required String? bankOfficerPhone,
    required double? minValue,
    required double? maxValue,
    required double? minValueSqm,
    required double? maxValueSqm,
    required double? latitude,
    required double? longitude,
    required double? area,
    required double? buildinglength,
    required double? buildingwidth,
    required double? landlength,
    required double? landwidth,
    required RoadModel? road,
    required int? bed,
    required int? bath,
    required int? livingroom,
    required int? floor,
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
  InsertAutoVerbalState build({PropertyModel? fromProperty}) {
    if (fromProperty != null) {
      return bindFromProperty(fromProperty);
    }

    return InsertAutoVerbalState(
      imageFiles: IList(),
      propertyType: null,
      province: null,
      bank: null,
      bankBranch: null,
      latitude: null,
      longitude: null,
      ownerName: null,
      ownerPhone: null,
      minValue: null,
      maxValue: null,
      minValueSqm: null,
      maxValueSqm: null,
      bankOfficerName: null,
      bankOfficerPhone: null,
      area: null,
      buildinglength: null,
      buildingwidth: null,
      landlength: null,
      landwidth: null,
      road: null,
      bed: null,
      bath: null,
      livingroom: null,
      floor: null,
    );
  }

  InsertAutoVerbalState bindFromProperty(PropertyModel property) {
    return InsertAutoVerbalState(
      propertyId: property.id,
      imageFiles: const IList.empty(),
      existingImageUrls: property.images.toIList(),
      propertyType: property.propertyType,
      province: property.province,
      ownerName: property.user.fullName,
      ownerPhone: property.user.phone,
      bankOfficerName: null,
      bankOfficerPhone: null,
      minValue: property.price,
      maxValue: property.price,
      minValueSqm: property.pricePerSqm,
      maxValueSqm: property.pricePerSqm,
      latitude: property.latitude,
      longitude: property.longitude,
      area: property.sqm,
      buildinglength: property.houseLength,
      buildingwidth: property.houseWidth,
      landlength: property.landLength,
      landwidth: property.landWidth,
      bed: property.bedrooms,
      bath: property.bathrooms,
      livingroom: property.livingRooms,
      floor: property.floors,
      bank: null,
      bankBranch: null,
      road: null,
    );
  }

  Future<ProviderStatus<void>> call() async {
    return await perform<void>(
      (state) async {
        if (state.imageFiles.isEmpty && state.existingImageUrls.isEmpty) {
          throw 'At least one image is required';
        }
        final userId = ref.watch(authProvider);
        if (userId == null) throw 'User must be login';
        if (state.province == null) throw 'Province is required';
        if (state.propertyType == null) throw 'Property type is required';
        if (state.ownerName.isNullOrBlank == true) {
          throw 'Owner name is required';
        }
        if (state.ownerPhone.isNullOrBlank == true) {
          throw 'Owner phone is required';
        }

        final sb = ref.watch(supabaseProvider).client;

        final newImageUrls = await Future.wait(
          state.imageFiles.map((imageFile) async {
            final bytes = await imageFile.readAsBytes();
            final newPath =
                '${DateTime.now().microsecondsSinceEpoch}${p.extension(imageFile.path)}';

            await sb.storage.from('files').uploadBinary(newPath, bytes);
            return sb.storage.from('files').getPublicUrl(newPath);
          }),
        );

        final imageUrls = [...state.existingImageUrls, ...newImageUrls];

        final jsonData = CreateAutoVerbalParam(
          image: imageUrls,
          bankBranch: state.bankBranch,
          latitude: state.latitude!,
          longitude: state.longitude!,
          ownerName: state.ownerName!,
          ownerPhone: state.ownerPhone!,
          bankOfficerName: state.bankOfficerName,
          bankOfficerPhone: state.bankOfficerPhone,
          minValue: state.minValue!,
          maxValue: state.maxValue!,
          minValueSqm: state.minValueSqm!,
          maxValueSqm: state.maxValueSqm!,
          area: state.area!,
          buildinglength: state.buildinglength,
          buildingwidth: state.buildingwidth,
          landlength: state.landlength!,
          landwidth: state.landwidth!,
          bed: state.bed,
          bath: state.bath,
          livingroom: state.livingroom,
          floor: state.floor,
          propertyTypeId: state.propertyType!.id,
          provinceId: state.province!.id,
          bankId: state.bank?.id,
          roadId: state.road?.id,
          userId: userId,
        ).toJson();

        try {
          await sb.from(AutoVerbalModel.table.tableName).insert(jsonData);

          // mark property as auto verbal added
          if (state.propertyId != null) {
            await sb.from(PropertyModel.table.tableName).update({
              PropertyTable.autoVerbalAdded: true,
              PropertyTable.hiddenFromHomePage: true,
            }).eq('id', state.propertyId!);
          }
        } catch (e) {
          await Future.wait(
            imageUrls.map((url) {
              final path = url.split('/').last;
              return sb.storage.from('files').remove([path]);
            }),
          );
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
sealed class UpdateAutoVerbalState
    with
        _$UpdateAutoVerbalState,
        ProviderStatusClassMixin<UpdateAutoVerbalState, void> {
  const UpdateAutoVerbalState._();

  const factory UpdateAutoVerbalState({
    required IList<XFile> newImageFiles,
    required IList<String> existingImageUrls,
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
    required int? bed,
    required int? bath,
    required int? livingroom,
    required int? floor,
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
      newImageFiles: IList(),
      existingImageUrls:
          initial.image.isNotEmpty ? IList(initial.image) : IList(),
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
      bed: initial.bed,
      bath: initial.bath,
      livingroom: initial.livingroom,
      floor: initial.floor,
    );
  }

  Future<ProviderStatus<void>> call() async {
    return await perform<void>(
      (state) async {
        if (state.newImageFiles.isEmpty && state.existingImageUrls.isEmpty) {
          throw 'At least one image is required';
        }
        final userId = ref.watch(authProvider);
        if (userId == null) throw 'User must be login';
        if (state.province == null) throw 'Province is required';
        if (state.propertyType == null) throw 'Property type is required';
        if (state.ownerName.isEmpty) throw 'Owner name is required';
        if (state.ownerPhone.isEmpty) throw 'Owner phone is required';

        final sb = ref.watch(supabaseProvider).client;

        final newImageUrls = await Future.wait(
          state.newImageFiles.map((imageFile) async {
            final bytes = await imageFile.readAsBytes();
            final newPath =
                '${DateTime.now().microsecondsSinceEpoch}${p.extension(imageFile.path)}';

            await sb.storage.from('files').uploadBinary(newPath, bytes);
            return sb.storage.from('files').getPublicUrl(newPath);
          }),
        );

        final allImageUrls = [...state.existingImageUrls, ...newImageUrls];

        final jsonData = UpdateAutoVerbalParam(
          propertyTypeId: state.propertyType!.id,
          provinceId: state.province!.id,
          image: allImageUrls,
          latitude: state.latitude,
          longitude: state.longitude,
          ownerName: state.ownerName,
          ownerPhone: state.ownerPhone,
          minValue: state.minValue,
          maxValue: state.maxValue,
          minValueSqm: state.minValueSqm,
          maxValueSqm: state.maxValueSqm,
          area: state.area,
          buildinglength: state.buildinglength,
          buildingwidth: state.buildingwidth,
          landlength: state.landlength,
          landwidth: state.landwidth,
          roadId: state.road?.id,
          bed: state.bed,
          bath: state.bath,
          livingroom: state.livingroom,
          floor: state.floor,
          bankOfficerName: state.bankOfficerName,
          bankOfficerPhone: state.bankOfficerPhone,
          bankId: state.bank?.id,
          bankBranch: state.bankBranch,
          status: PropertyAndAutoVerbalStatus.resubmit,
          createdAt: DateTime.now(),
        ).toJson();

        jsonData['status'] = PropertyAndAutoVerbalStatus.resubmit.name;
        jsonData['created_at'] = DateTime.now().toIso8601String();

        await sb
            .from(AutoVerbalModel.table.tableName)
            .update(jsonData)
            .eq('id', initial.id);
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
  ProviderStatus<void> build(int autoVerbalId) =>
      const ProviderStatus.initial();

  Future<ProviderStatus<void>> call() async {
    return await perform(
      (state) async {
        final sb = ref.watch(supabaseProvider).client;
        await sb.from(AutoVerbalModel.table.tableName).update({
          'deleted_at': DateTime.now().toIso8601String(),
        }).eq(AutoVerbalModel.idKey, autoVerbalId);
      },
      onSuccess: (success) {
        ref.invalidate(autoVerbalListProvider);
        ref.invalidate(countPropertyAndAutoVerbalProvider);
      },
    );
  }
}

@riverpod
class ApproveAutoVerbal extends _$ApproveAutoVerbal {
  @override
  ProviderStatus<void> build(int autoVerbalId) =>
      const ProviderStatus.initial();

  Future<ProviderStatus<void>> call({
    required double minValue,
    required double maxValue,
  }) async {
    return await perform(
      (state) async {
        final adminId = ref.watch(authProvider);
        if (adminId == null) throw 'Admin must be login';

        final sb = ref.read(supabaseProvider).client;
        await sb.from(AutoVerbalModel.table.tableName).update({
          AutoVerbalTable.status: PropertyAndAutoVerbalStatus.approved.name,
          AutoVerbalTable.approvedAt: DateTime.now().toIso8601String(),
          'approved_by': adminId,
          AutoVerbalTable.minValue: minValue,
          AutoVerbalTable.maxValue: maxValue,
        }).eq('id', autoVerbalId);
      },
      onSuccess: (success) {
        ref.invalidate(autoVerbalListProvider);
        ref.invalidate(autoVerbalDetailProvider(autoVerbalId));
        ref.invalidate(countPropertyAndAutoVerbalProvider);
      },
    );
  }
}

@riverpod
FutureOr<AutoVerbalModel> autoVerbalDetail(
  AutoVerbalDetailRef ref,
  int id,
) async {
  final sb = ref.watch(supabaseProvider).client;
  final autoVerbal = await sb
      .from(AutoVerbalModel.table.tableName)
      .select(AutoVerbalModel.table.selectStatement)
      .eq('id', id)
      .maybeSingle();
  return AutoVerbalModel.fromJson(autoVerbal!);
}

@riverpod
class RejectAutoVerbal extends _$RejectAutoVerbal {
  @override
  ProviderStatus<void> build(int autoVerbalId) =>
      const ProviderStatus.initial();

  Future<ProviderStatus<void>> call({
    required String reason,
  }) async {
    return await perform(
      (state) async {
        final sb = ref.read(supabaseProvider).client;

        await sb.from(AutoVerbalModel.table.tableName).update({
          AutoVerbalTable.status: PropertyAndAutoVerbalStatus.rejected.name,
          AutoVerbalTable.rejectAt: DateTime.now().toIso8601String(),
          AutoVerbalTable.rejectReason: reason,
        }).eq('id', autoVerbalId);
      },
      onSuccess: (success) {
        ref.invalidate(autoVerbalListProvider);
        ref.invalidate(autoVerbalDetailProvider(autoVerbalId));
        ref.invalidate(countPropertyAndAutoVerbalProvider);
      },
    );
  }
}
