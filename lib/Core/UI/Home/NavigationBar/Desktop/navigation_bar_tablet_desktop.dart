import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Components/button.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';
import 'package:surgidata_frontend/Core/Manager/theme_manager.dart';
import 'package:surgidata_frontend/style.dart';

class NavigationBarTabletDesktop extends StatefulWidget {
  NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  _NavigationBarTabletDesktopState createState() =>
      _NavigationBarTabletDesktopState();
}

class _NavigationBarTabletDesktopState
    extends State<NavigationBarTabletDesktop> {
  List _isHovering = [false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var primaryTextColor = Theme.of(context).primaryTextTheme.bodyText1.color;

    return Container(
      decoration: BoxDecoration(color: Theme.of(context).appBarTheme.color, boxShadow: [
        BoxShadow(
          offset: Offset(0, -2),
          blurRadius: 24,
          color: Colors.black.withOpacity(0.06),
        ),
      ]),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1240),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                "Plato",
                style: HeaderDesktopTextStyle,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          _isHovering[0] = value;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Pricing",
                              style: TextStyle(
                                  color: _isHovering[0]
                                      ? $primaryTealColor
                                      : primaryTextColor)),
                          SizedBox(
                            height: 5,
                          ),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 30,
                              color: $primaryTealColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          _isHovering[1] = value;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Support",
                              style: TextStyle(
                                  color: _isHovering[1]
                                      ? $primaryTealColor
                                      : primaryTextColor)),
                          SizedBox(
                            height: 5,
                          ),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 30,
                              color: $primaryTealColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Button(
                backgroundColor: $primaryOrangeColor,
                buttonSize: ButtonSize.LARGE,
                buttonText: "Vision Console",
                onPress: () {
                  Navigator.pushNamed(context, "/preview");
                },
              ),
              IconButton(
                icon: Icon(Icons.brightness_6),
                color: Theme.of(context).iconTheme.color,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onPressed: () {
                  ThemeManager.of(context).setBrightness(
                      Theme.of(context).brightness == Brightness.dark
                          ? Brightness.light
                          : Brightness.dark);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
