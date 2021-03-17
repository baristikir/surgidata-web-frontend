// import 'package:flutter/material.dart';
// import 'package:plato_hospital/framework/framework.dart';
// import 'package:plato_hospital/services/services/navigation_service.dart';
 
// import 'enums.dart';
 
// BuildContext get _mainCtx => locator<NavigationService>().mainCtx;
 
// Orientation get deviceOrientation => MediaQuery.of(_mainCtx).orientation;
 
// Size get screenSize => MediaQuery.of(_mainCtx).size;
 
// double get screenHeight => screenSize.height;
 
// double get screenWidth => screenSize.width;
 
// double get screenAspectRatio => MediaQuery.of(_mainCtx).size.aspectRatio;
 
// double get screenPixelRatio => MediaQuery.of(_mainCtx).devicePixelRatio;
 
// double scaledScreenHeight(double scale) => screenHeight * scale;
 
// double scaledScreenWidth(double scale) => screenWidth * scale;
 
// DeviceScreenType get deviceScreenType {
//  if (deviceOrientation == Orientation.landscape) {
//  if (screenWidth > 950)
//  return DeviceScreenType.Desktop;
//  else if (screenWidth > 650)
//  return DeviceScreenType.Tablet;
//  else if (screenWidth > 200)
//  return DeviceScreenType.Mobile;
//  else
//  return DeviceScreenType.Watch;
//  }
//  if (screenHeight > 950)
//  return DeviceScreenType.Desktop;
//  else if (screenHeight > 650)
//  return DeviceScreenType.Tablet;
//  else if (screenHeight > 200)
//  return DeviceScreenType.Mobile;
//  else
//  return DeviceScreenType.Watch;
// }