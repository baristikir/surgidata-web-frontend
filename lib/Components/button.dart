import "package:flutter/material.dart";
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/style.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Function onPress;
  const Button({Key key, this.buttonText,this.backgroundColor, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        style: TextButton.styleFrom(
          onSurface: backgroundColor,
          primary: $white,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        ),
        onPressed: onPress,
        child: Text(
          buttonText,
          style: ButtonTextStyle,
        ),
      ),
    );
  }
}
