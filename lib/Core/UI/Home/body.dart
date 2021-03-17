import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/home_hero.dart';
import 'package:surgidata_frontend/Core/UI/Home/Sponsors/sponsors_heading.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 460,
          child: HomeHero(),
        ),
        Container(
          height: 230,
          child: SponsorsHeading(
            screenSize: screenSize,
          ),
        ),
      ],
    );
  }
}
