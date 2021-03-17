import 'package:flutter/material.dart';
import 'package:surgidata_frontend/style.dart';

class HeroDescription extends StatelessWidget {
  const HeroDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(bottom: 18.0),
      child: Text(
        "Trusted by clinics, doctors and caregivers",
        style: screenSize > 1200 ? Body1DesktopTextStyle : screenSize > 800 ? Body1TabletTextStyle : Body1MobileTextStyle,
        textAlign: TextAlign.start,
      ),
    );
  }
}
