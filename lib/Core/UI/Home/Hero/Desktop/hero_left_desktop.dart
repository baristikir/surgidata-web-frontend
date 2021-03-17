import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/button.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/Widgets/hero_description.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/Widgets/hero_title.dart';

class HomeHeroLeftDesktop extends StatelessWidget {
  const HomeHeroLeftDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
         width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroTitle(),
            HeroDescription(),
            Button(
              buttonText: "Request Demo",
              backgroundColor: $primaryTealColor,
              buttonSize: ButtonSize.LARGE,
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}

