import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kimapp/kimapp.dart';

part 'auto_verbal_provider.freezed.dart';
part 'auto_verbal_provider.g.dart';

@freezed
class InsertAutoVerbalState
    with
        _$InsertAutoVerbalState,
        ProviderStatusClassMixin<InsertAutoVerbalState, void> {
  const InsertAutoVerbalState._();

  const factory InsertAutoVerbalState({
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
  InsertAutoVerbalState build() => const InsertAutoVerbalState();

  Future<ProviderStatus<void>> call() async {
    return await perform<void>(
      (state) async {
        final result = await ref.read();
        return result.getOrThrow();
      },
      onSuccess: (success) {},
    );
  }
}
