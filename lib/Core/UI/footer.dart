import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/footer_column.dart';
import 'package:surgidata_frontend/Utils/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: ResponsiveWidget(
        largeScreen: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterColumn(
                  heading: "Navigation",
                  links: [
                    "Home",
                    "Demo Preview",
                    "Demo Login",
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    width: double.maxFinite,
                    height: 1,
                  ),
                ),
                Text(
                  'All rights reserved, © 2020 Surgi Data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
        smallScreen: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterColumn(
                  heading: "Navigation",
                  links: [
                    "Home",
                    "Demo Preview",
                    "Demo Login",
                  ],
                ),
                FooterColumn(
                  heading: "Contact",
                  links: [
                    "Impressum",
                    "DSGVO",
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
