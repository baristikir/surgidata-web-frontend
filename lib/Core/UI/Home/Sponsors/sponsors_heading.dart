import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Utils/responsive.dart';

class SponsorsHeading extends StatelessWidget {
  final Size screenSize;
  const SponsorsHeading({Key key, this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: ResponsiveWidget.isSmallScreen(context) ? 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
          Text("Our Sponsors", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: "Manrope"
          ),),
        ],
      ) : Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Our Sponsors",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            fontFamily: "Manrope",
          ),)
        ],
      ),
    );
  }
}
