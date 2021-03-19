import 'package:flutter/material.dart';

// *=================================* //
// *          Main Container         * //
// *=================================* //
class CenteredContainer extends StatelessWidget {
  final Widget child;
  const CenteredContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // * Alignment + Container Padding
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        // * Content Max-Width 1240
        constraints: BoxConstraints(maxWidth: 1240),
        // * Children - Widgets
        child: child,
      ),
    );
  }
}
