import "package:flutter/material.dart";
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/style.dart';

enum ButtonSize { SMALL, MEDIUM, LARGE }

class Button extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final ButtonSize buttonSize;
  final Function onPress;
  const Button(
      {Key key,
      this.buttonText,
      this.backgroundColor,
      this.buttonSize,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (buttonSize) {
      case ButtonSize.SMALL:
        const EdgeInsets.symmetric(horizontal: 20, vertical: 15);
        break;
      case ButtonSize.MEDIUM:
        const EdgeInsets.symmetric(horizontal: 20, vertical: 20);
        break;
      case ButtonSize.LARGE:
        const EdgeInsets.symmetric(horizontal: 25, vertical: 25);
        break;
      default:
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        style: TextButton.styleFrom(
          onSurface: backgroundColor,
          primary: $white,
          backgroundColor: backgroundColor,
          padding: buttonSize == ButtonSize.LARGE
              ? const EdgeInsets.symmetric(horizontal: 25, vertical: 20)
              : buttonSize == ButtonSize.MEDIUM
                  ? const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
                  : buttonSize == ButtonSize.SMALL
                      ? const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                      : const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
