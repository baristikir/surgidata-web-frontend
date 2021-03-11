import 'dart:html';

import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/button.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/Screens/Home/Components/menu_item.dart';
import 'package:surgidata_frontend/style.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
      width: size.width,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -2),
          blurRadius: 24,
          color: Colors.black.withOpacity(0.06),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 5),
          Text(
            "Plato",
            style: HeaderTextStyle,
          ),
          Spacer(
            flex: 1,
          ),
          MenuItem(
            title: "Pricing",
            onClick: () {},
          ),
          MenuItem(
            title: "Community",
            onClick: () {},
          ),
          MenuItem(
            title: "Support",
            onClick: () {},
          ),
          Spacer(
            flex: 4,
          ),
          Button(
            buttonText: "Vision Console",
            backgroundColor: $primaryOrangeColor,
            onPress: (){
            },
          )
        ],
      ),
    );
  }
}
