import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/centered_container.dart';
import 'package:surgidata_frontend/Components/section_title.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/Utils/responsive.dart';
import 'package:surgidata_frontend/style.dart';

class QualtiySection extends StatelessWidget {
  const QualtiySection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredContainer(
      child: Container(
        child: ResponsiveWidget(
          largeScreen: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SectionTitle(title: "Our Qualities"),
                  Container(
                    width: 520,
                    child: Text(
                      "Digitalize clinical documentation and interdisciplinary communication, so you can focus on what matters most, enhancing patient qualtiy.",
                      style: Body1MobileTextStyle,
                    ),
                  ),
                ],
              ),
              Container(
                width: 620,
                height: 360,
                decoration: BoxDecoration(color: $lightTeal.withOpacity(0.4)),
              ),
            ],
          ),
          mediumScreen: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SectionTitle(title: "Our Qualities"),
                  Text(
                    "Digitalize clinical documentation and interdisciplinary communication, so you can focus on what matters most, enhancing patient qualtiy.",
                    style: Body1MobileTextStyle,
                  ),
                ],
              ),
              Container(
                height: 160,
                decoration: BoxDecoration(color: $lightTeal.withOpacity(0.4)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
