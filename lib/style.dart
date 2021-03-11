import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:surgidata_frontend/Constants/color.variables.dart';

// *===========================================* //
// *                Font Families              * //
// *===========================================* //
const String Manrope = "Manrope";
const String IBM = "IBM Plex Sans";

// *===========================================* //
// *                 Font Sizes                * //
// *===========================================* //
const $DesktopTitleSize = 42.0;
const $TabletTitleSize = 32.0;
const $MobileTitleSize = 24.0;

const $DesktopTextSize = 20.0;
const $TabletTextSize = 18.0;
const $MobileTextSize = 16.0;

const $DesktopHeaderLogo = 28.0;
const $MobileHeaderLogo = 20.0;

const $DesktopButtonFontSize = 16.0;
const $TabletButtonFontSize = 18.0;
const $MobileButtonFontSize = 16.0;

// *===========================================* //
// *                 Styles                    * //
// *===========================================* //
const HeaderTextStyle = TextStyle(
  fontFamily: IBM,
  fontWeight: FontWeight.w600,
  fontSize: $DesktopHeaderLogo,
  color: $black,
);

const TitleTextStyle = TextStyle(
  fontFamily: Manrope,
  fontWeight: FontWeight.w600,
  fontSize: $DesktopTitleSize,
  color: $black,
);

const Body1TextStyle = TextStyle(
  fontFamily: Manrope,
  fontWeight: FontWeight.w400,
  fontSize: $DesktopTextSize,
  color: $black,
);

const ButtonTextStyle = TextStyle(
  color: $white,
  fontFamily: "Manrope",
  fontWeight: FontWeight.w500,
  fontSize: $DesktopButtonFontSize,
);
