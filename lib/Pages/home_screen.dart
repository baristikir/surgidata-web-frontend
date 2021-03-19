import 'dart:ui';

import "package:flutter/material.dart";
import 'package:surgidata_frontend/Core/Manager/theme_manager.dart';
import 'package:surgidata_frontend/Core/UI/Home/NavigationBar/Desktop/navigation_bar_tablet_desktop.dart';
import 'package:surgidata_frontend/Core/UI/Home/Sponsors/sponsors_heading.dart';
import 'package:surgidata_frontend/Core/UI/Home/body.dart';
import 'package:surgidata_frontend/Core/UI/footer.dart';

import 'package:surgidata_frontend/Core/UI/web_drawer.dart';

import 'package:surgidata_frontend/Utils/responsive.dart';
import 'package:surgidata_frontend/Components/centered_container.dart';
import 'package:surgidata_frontend/style.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
                backgroundColor:
                    Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
                shadowColor: Colors.black12,
                elevation: 0,
                centerTitle: true,
                iconTheme:
                    IconThemeData(color: Theme.of(context).iconTheme.color),
                actions: [
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
                title: Text(
                  "Plato",
                  style: screenSize.width > 800
          ? HeaderDesktopTextStyle
          : HeaderMobileTextStyle,
                ),
              )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: NavigationBarTabletDesktop(),
            ),
      drawer: WebDrawer(),
      body: Scrollbar(
        controller: _scrollController,
        isAlwaysShown: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeBody(),
              // Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
