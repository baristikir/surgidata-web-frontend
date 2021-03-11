import "package:flutter/material.dart";
import 'package:surgidata_frontend/Screens/Home/Components/body.dart';
import 'package:surgidata_frontend/Screens/Home/Components/header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            HomeBody(),
          ],
        ),
      ),
    );
  }
}