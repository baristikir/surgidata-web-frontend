import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final Function onClick;

  const NavBarItem({Key key, this.title, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(
            color: $black,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}