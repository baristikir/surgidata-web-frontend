import 'package:flutter/material.dart';
import 'package:surgidata_frontend/style.dart';

class HeroTitle extends StatelessWidget {
  const HeroTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(bottom: 24.0),
      child: Text(
        "Plato helps you make sense of health-care data",
        style: screenSize.width > 1200  ? TitleDesktopTextStyle : screenSize.width > 800 ? TitleTabletTextStyle : TitleMobileTextStyle,
        textAlign: TextAlign.start,
      ),
    );
  }
}
