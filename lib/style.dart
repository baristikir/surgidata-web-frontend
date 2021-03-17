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
const $DesktopTitleSize = 48.0;
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
// * Header Font Styles *
const HeaderDesktopTextStyle = TextStyle(
  fontFamily: IBM,
  fontWeight: FontWeight.w500,
  fontSize: $DesktopHeaderLogo,
);
const HeaderMobileTextStyle = TextStyle(
  fontFamily: IBM,
  fontWeight: FontWeight.w500,
  fontSize: $MobileHeaderLogo,
);

// * Title Font Sizes *
const TitleDesktopTextStyle = TextStyle(
  fontFamily: Manrope,
  fontWeight: FontWeight.w600,
  fontSize: $DesktopTitleSize,
);
const TitleTabletTextStyle = TextStyle(
  fontFamily: Manrope,
  fontWeight: FontWeight.w600,
  fontSize: $TabletTitleSize,
);
const TitleMobileTextStyle = TextStyle(
  fontFamily: Manrope,
  fontWeight: FontWeight.w600,
  fontSize: $MobileTitleSize,
);


// * Body Font Sizes * 
const Body1DesktopTextStyle = TextStyle(
  fontFamily: Manrope,
  fontWeight: FontWeight.w400,
  fontSize: $DesktopTextSize,
);
const Body1TabletTextStyle = TextStyle(
  fontFamily: Manrope,
  fontWeight: FontWeight.w400,
  fontSize: $TabletTextSize,
);
const Body1MobileTextStyle = TextStyle(
  fontFamily: Manrope,
  fontWeight: FontWeight.w400,
  fontSize: $MobileTextSize,
);

const ButtonTextStyle = TextStyle(
  color: $white,
  fontFamily: "Manrope",
  fontWeight: FontWeight.w500,
  fontSize: $DesktopButtonFontSize,
);
