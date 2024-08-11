import 'package:flutter/cupertino.dart';

import '../../constaints.dart';

class MaxWidthBox extends StatelessWidget {
  const MaxWidthBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: child,
      ),
    );
  }
}
