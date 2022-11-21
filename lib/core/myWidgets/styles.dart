import 'dart:ui';

import 'package:flutter/material.dart';

//COLORS PALETTE
const Color mainBlackColor = Color(0xFF000000);
const Color mainDarkColor = Color(0xFFff8426);
const Color mainMediumColor = Color(0xFFffa159);
const Color mainSoftColor = Color(0xFFffbe8c);
const Color mainWhiteColor = Color(0xFFfff4f4);
const Color mainDisableColor = Colors.grey;
const Color mainEnableColor = mainMediumColor;

//COLORS INFO
const Color mainDangerColor = Colors.red;
const Color mainInfoColor = Colors.indigo;
const Color mainConfirmColor = Colors.green;
const Color mainAlertColor = Colors.orange;

//MAIN PROPERTIES
const String mainFontFamily = 'Rubik';

//TEXT PROPERTIES
const String textFontFamily = mainFontFamily;
const Color textColor = mainDarkColor;
const double textFontSizeH1 = 36;
const double textFontSizeH2 = 32;
const double textFontSizeH3 = 28;
const double textFontSizeH4 = 24;
const double textFontSizeH5 = 20;
const double textFontSizeH6 = 16;
const FontStyle textFontStyle = FontStyle.normal;
const FontWeight textFontWeight = FontWeight.w400;
const TextAlign textAlign = TextAlign.start;

//BUTTONS PROPERTIES
double buttonHeight = 50;
double buttonRadius = 12;
Color buttonBackgroundColor = mainDarkColor;
Color buttonTextColor = mainWhiteColor;
Color buttonIconColor = buttonTextColor;
const String buttonFontFamily = mainFontFamily;
const double buttonFontSize = textFontSizeH5;
const FontStyle buttonFontStyle = FontStyle.normal;
const FontWeight buttonFontWeight = FontWeight.w400;

//INPUTTEXT PROPERTIES
const Color inputTextEnableColor = Colors.white;
const Color inputTextDisableColor = Color.fromARGB(255, 239, 238, 238);

const double inputTextRadiusBorder = 7;
const double borderSize = 1;
const Color inputTextErrorBorderColor = mainDangerColor;
const Color inputTextEnableBorderColor = mainDisableColor;
const Color inputTextFocusBorderColor = mainDarkColor;
const Color inputTextDisableBorderColor = mainDisableColor;

const double inputTextSize = 16;
const String inputTextFontFamily = mainFontFamily;
const FontStyle inputTextFontStyle = FontStyle.normal;
const FontWeight inputTextFontWeight = FontWeight.w400;
const TextAlign inputTextAlign = TextAlign.start;
