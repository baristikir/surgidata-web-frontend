import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/centered_container.dart';
import 'package:surgidata_frontend/Components/section_title.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 32.0),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: screenSize.width / 2,
              height: 460,
              decoration: BoxDecoration(
                color: $lightRoyal.withOpacity(0.2),
              ),
            ),
          ),
          CenteredContainer(
            child: SectionTitle(
              title:
                  "Plato ist eine digitale Plattform, die sich nahtlos an ihre Routine anpasst",
            ),
          ),
        ],
      ),
    );
  }
}
