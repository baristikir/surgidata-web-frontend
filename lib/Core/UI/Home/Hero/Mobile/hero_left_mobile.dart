import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/button.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/Widgets/hero_description.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/Widgets/hero_title.dart';

class HomeHeroLeftMobile extends StatelessWidget {
  const HomeHeroLeftMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeroTitle(),
          HeroDescription(),
          Button(
            buttonSize: ButtonSize.LARGE,
            buttonText: "Request Demo",
            backgroundColor: $primaryTealColor,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
