import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';

class HomeHeroRightDesktop extends StatelessWidget {
  const HomeHeroRightDesktop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  color: $lightTeal.withOpacity(0.4),
                ),
              ),
             ),
            Positioned(
              child: Container(),
             ),
          ],
        ),
    );
  }
}