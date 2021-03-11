import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/button.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/style.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Container(
        height: 520,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 520,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      "Plato helps you make sense of health-care data",
                      style: TitleTextStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 18.0),
                    child: Text(
                      "Trusted by clinics, doctors and caregivers",
                      style: Body1TextStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Button(
                    buttonText: "Request Demo",
                    backgroundColor: $primaryTealColor,
                    onPress: () {},
                  )
                ],
              ),
            ),
            Container(
              width: 520,
              height: 420,
              child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          color: $lightTeal,
                        ),
                      ),
                     ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
