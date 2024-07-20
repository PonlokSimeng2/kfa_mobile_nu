import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.table.dart';
import 'package:kfa_mobile_nu/src/models/bank_model.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.dart';
import 'package:kfa_mobile_nu/src/models/province_model.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp/kimapp.dart';
import 'dart:io';
import 'package:path/path.dart' as p;

import '../../exports.dart';

part 'auto_verbal_provider.freezed.dart';
part 'auto_verbal_provider.g.dart';

const _limit = 100;

@riverpod
FutureOr<IList<AutoVerbalModel>> autoVerbalList(
  AutoVerbalListRef ref, {
  required int page,
  String? status,
}) async {
  final sb = ref.watch(supabaseProvider).client;

  final offset = page * _limit;

  var query = sb
      .from(AutoVerbalModel.table.tableName)
      .select(AutoVerbalModel.table.selectStatement);

  if (status != null) {
    query = query.eq(AutoVerbalTable.status, status);
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
  String? status,
}) {
  final page = index ~/ _limit;

  final pageItems =
      ref.watch(autoVerbalListProvider(page: page, status: status));
  final hasNextPage =
      ref.exists(autoVerbalListProvider(page: page + 1, status: status));

  return PaginatedItem.build(
    pageItems: pageItems,
    limit: _limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

@freezed
class InsertAutoVerbalState
    with
        _$InsertAutoVerbalState,
        ProviderStatusClassMixin<InsertAutoVerbalState, void> {
  const InsertAutoVerbalState._();

  const factory InsertAutoVerbalState({
    required XFile? imageFile,
    required PropertyTypeModel? propertyType,
    required ProvinceModel? province,
    required BankModel? bank,
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
    required double head,
    required double length,
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
        head: 0,
        length: 0,
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
        // if (state.address.isEmpty) throw 'Address is required';

        final sb = ref.watch(supabaseProvider).client;

        final path = state.imageFile!.path;
        final file = File(path);
        final newPath =
            '${DateTime.now().microsecondsSinceEpoch}${p.extension(path)}';

        await sb.storage.from('files').upload(newPath, file);
        final imageUrl = sb.storage.from('files').getPublicUrl(newPath);

        try {
          await sb.from(AutoVerbalModel.table.tableName).insert(
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
              AutoVerbalTable.head: state.head,
              AutoVerbalTable.length: state.length,
              AutoVerbalTable.bankOfficerName: state.bankOfficerName,
              AutoVerbalTable.bankOfficerPhone: state.bankOfficerPhone,
              AutoVerbalTable.userId: userId,
              AutoVerbalTable.bankId: state.bank?.id,

              // AutoVerbalTable.createdAt: DateTime.now(),
            },
          );
        } catch (e) {
          // delete uploaded image
          await sb.storage.from('files').remove([newPath]);
          rethrow;
        }
      },
      onSuccess: (success) {
        ref.invalidate(autoVerbalListProvider);
      },
    );
  }
}
