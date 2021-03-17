import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/Mobile/hero_left_mobile.dart';

class HomeHeroLeft extends StatelessWidget {
  const HomeHeroLeft({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeHeroLeftMobile(),
    );
  }
}
