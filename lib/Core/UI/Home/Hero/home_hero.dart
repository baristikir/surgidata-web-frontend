import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/Desktop/hero_left_desktop.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/Desktop/hero_right_desktop.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/Mobile/hero_left_mobile.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/Mobile/hero_right_mobile.dart';
import 'package:surgidata_frontend/Utils/responsive.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveWidget(
        largeScreen: Row(
          children: [
            HomeHeroLeftDesktop(),
            HomeHeroRightDesktop(),
          ],
        ),
        mediumScreen: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            HomeHeroLeftMobile(),
            HomeHeroRightMobile(),
          ],
        ),
      ),
      // ? Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //       HomeHeroLeftMobile(),
      //       HomeHeroRightMobile(),
      //     ],
      //   )
      // : Row(
      //     children: [
      //       HomeHeroLeftDesktop(),
      //       HomeHeroRightDesktop(),
      //     ],
      //   ),
    );
  }
}
