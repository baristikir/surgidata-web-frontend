import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/centered_container.dart';
import 'package:surgidata_frontend/Utils/responsive.dart';

class SponsorsSection extends StatelessWidget {
  const SponsorsSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _partners = [
      "images/sponsors/Google-Logo.png",
      "images/sponsors/Airbnb-Logo.png",
      "images/sponsors/Microsoft-Logo.png",
      "images/sponsors/Airbnb-Logo.png",
      "images/sponsors/Google-Logo.png"
    ];

    // return Container(
    //   child: Row(
    //       children: [
    //         for (var partnerItem in _partners)
    //           Card(
    //             child: Container(
    //               decoration: BoxDecoration(
    //                 image: DecorationImage(
    //                   image: AssetImage(partnerItem),
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //             ),
    //           )
    //       ]
    //       // _partners.map((partnerItem) => Card(
    //       //   child: Container(
    //       //     decoration: BoxDecoration(
    //       //       image: DecorationImage(
    //       //         image: AssetImage(partnerItem),
    //       //         fit: BoxFit.cover,
    //       //       ),
    //       //     ),
    //       //   ),
    //       // )).toList(),
    //       ),
    // );

    return CenteredContainer(
      child: Container(
        width: 1024,
        height: 160,
        child: ResponsiveWidget.isMediumScreen(context)
            ? GridView.count(
                crossAxisCount: 5,
                shrinkWrap: true,
                primary: true,
                children: _partners
                    .map((partner) => Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(partner),
                                  fit: BoxFit.scaleDown),
                            ),
                          ),
                        ))
                    .toList(),
              )
            : GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 5.0,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(_partners[index]),
                        fit: BoxFit.scaleDown,
                      )),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
