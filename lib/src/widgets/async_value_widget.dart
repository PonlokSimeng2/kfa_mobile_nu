import '../../exports.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.error,
    this.loading,
    this.useScaffold = false,
    this.useAnimation = false,
  });

  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget Function(Object, StackTrace?)? error;
  final Widget Function()? loading;
  final bool useAnimation;

  /// Display error or loading page as scaffold. Give background color...
  final bool useScaffold;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: (value) {
        final child = data(value);
        return child;
      },
      error: error ??
          (e, _) {
            return Center(
              child: Text(
                e.toString(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            );
          },
      loading: loading ??
          () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
    );
  }
}

extension AsyncUI<T> on AsyncValue<T> {
  Widget onData(Widget Function(T data) onData,
      {Widget Function()? loadingWidget}) {
    return AsyncValueWidget(
      value: this,
      data: onData,
      loading: loadingWidget,
    );
  }
}
