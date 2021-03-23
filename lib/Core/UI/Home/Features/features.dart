import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/centered_container.dart';
import 'package:surgidata_frontend/Components/section_title.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/Utils/responsive.dart';
import 'package:surgidata_frontend/style.dart';

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
              height: 860,
              decoration: BoxDecoration(
                color: $lightRoyal.withOpacity(0.2),
              ),
            ),
          ),
          CenteredContainer(
            child: Column(
              children: [
                SectionTitle(
                  title:
                      "Plato ist eine digitale Plattform, die sich nahtlos an ihre Routine anpasst",
                ),
                SizedBox(
                  height: 32,
                ),
                ResponsiveWidget(
                  largeScreen: Row(
                    children: [
                      FeatureCard(
                        title: "Prä",
                        description:
                            "Beschleunigen Sie den Patienten-CheckIn und die Anamnese-Prozesse",
                      ),
                      FeatureCard(
                        title: "Post",
                        description:
                            "Standardisieren Sie die chirurgische Planung und Logistik",
                      ),
                      FeatureCard(
                        title: "Intra",
                        description:
                            "Zentralisieren Sie die Dokumentation, Kommunikation und Follow-ups bei Patienten",
                      ),
                    ],
                  ),
                  mediumScreen: Column(
                    children: [
                      FeatureCard(
                        title: "Prä",
                        description:
                            "Beschleunigen Sie den Patienten-CheckIn und die Anamnese-Prozesse",
                      ),
                      FeatureCard(
                        title: "Post",
                        description:
                            "Standardisieren Sie die chirurgische Planung und Logistik",
                      ),
                      FeatureCard(
                        title: "Intra",
                        description:
                            "Zentralisieren Sie die Dokumentation, Kommunikation und Follow-ups bei Patienten",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PriorityCard(
                      number: "1",
                      title: "Security",
                    ),
                    PriorityCard(
                      number: "2",
                      title: "Locally Hosted",
                    ),
                    PriorityCard(
                      number: "3",
                      title: "Intuitive",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PriorityCard extends StatelessWidget {
  final String number;
  final String title;
  const PriorityCard({
    Key key,
    this.number,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 4.0),
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
              color: $primaryTealColor.withOpacity(0.5),
              fontSize: ResponsiveWidget.isLargeScreen(context) ? 42 : 64,
              fontFamily: "Manrope",
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            title,
            style: Body1TabletTextStyle,
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  const FeatureCard({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Container(
        padding: const EdgeInsets.fromLTRB(32.0, 48.0, 32.0, 48.0),
        height: 220,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 32,
              width: 32,
              child: Container(
                color: $lightTeal.withOpacity(0.4),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                  fontFamily: "Manrope",
                  fontWeight: FontWeight.w500,
                  fontSize: 24.0,
                  color: Theme.of(context).primaryTextTheme.headline6.color),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: 340,
              child: Text(
                description,
                style: ResponsiveWidget.isLargeScreen(context)
                    ? Body1DesktopTextStyle
                    : Body1MobileTextStyle,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: $white,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
