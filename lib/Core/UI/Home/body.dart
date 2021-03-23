import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/centered_container.dart';
import 'package:surgidata_frontend/Components/section_title.dart';
import 'package:surgidata_frontend/Core/UI/Home/Features/features.dart';
import 'package:surgidata_frontend/Core/UI/Home/Hero/home_hero.dart';
import 'package:surgidata_frontend/Core/UI/Home/Quality/qualities.dart';
import 'package:surgidata_frontend/Core/UI/Home/Sponsors/sponsors.dart';
import 'package:surgidata_frontend/Core/UI/Home/Sponsors/sponsors_heading.dart';
import 'package:surgidata_frontend/Core/UI/footer.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CenteredContainer(
          child: Container(
            height: 460,
            child: HomeHero(),
          ),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 32.0),
              child: SectionTitle(
                title: "Our Partners",
              ),
            ),
            SponsorsSection(),
          ],
        ),
        FeaturesSection(),
        QualtiySection(),
      ],
    );
  }
}
