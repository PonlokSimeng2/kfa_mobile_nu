import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.table.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.dart';
import 'package:kfa_mobile_nu/src/models/province_model.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp/kimapp.dart';

import '../../exports.dart';

part 'auto_verbal_provider.freezed.dart';
part 'auto_verbal_provider.g.dart';

@freezed
class InsertAutoVerbalState
    with
        _$InsertAutoVerbalState,
        ProviderStatusClassMixin<InsertAutoVerbalState, void> {
  const InsertAutoVerbalState._();

  const factory InsertAutoVerbalState({
    required String image,
    required PropertyTypeModel? propertyType,
    //required ProvinceModel? province,
    required double latitude,
    required double longitude,
    required String ownerName,
    required String ownerPhone,
    required String bankOfficerName,
    required String bankOfficerPhone,
    required String address,
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
        image: '',
        propertyType: null,
        //province: null,
        latitude: 11.5564,
        longitude: 104.9282,
        ownerName: '',
        ownerPhone: '',
        bankOfficerName: '',
        bankOfficerPhone: '',
        address: '',
      );

  Future<ProviderStatus<void>> call() async {
    return await perform<void>(
      (state) async {
        if (state.image.isEmpty) throw 'Images is empty';
        final userId = ref.watch(authProvider);
        if (userId == null) throw 'User must be login';
        // if (state.propertyType == null) throw 'Property type is required';
        final sb = ref.watch(supabaseProvider).client;

        try {
          await sb.from(AutoVerbalModel.table.tableName).insert({
            //AutoVerbalTable.propertyTypeId: state.propertyType.id,
            AutoVerbalTable.image: state.image,
            AutoVerbalTable.latitude: state.latitude,
            AutoVerbalTable.longitude: state.longitude,
            AutoVerbalTable.ownerName: state.ownerName,
            AutoVerbalTable.ownerPhone: state.ownerPhone,
            AutoVerbalTable.bankOfficerName: state.bankOfficerName,
            AutoVerbalTable.bankOfficerPhone: state.bankOfficerPhone,
            AutoVerbalTable.address: state.address,
          });
        } catch (e) {
          rethrow;
        }
      },
      onSuccess: (success) {},
    );
  }
}
