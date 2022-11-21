import 'dart:ui';

import 'package:flutter/material.dart';

//TEXT PROPERTIES

//BUTTONS PROPERTIES
double buttonHeight = 50;
Color buttonBackgroundColor = Color(0xff000000);
Color buttonTextColor = const Color(0xffFFFFFF);
double buttonRadius = 12;
const double buttonFontSize = 16;
const FontStyle buttonFontStyle = FontStyle.normal;

ButtonStyle defaultButtonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    backgroundColor: MaterialStateProperty.all(buttonBackgroundColor),
    foregroundColor: MaterialStateProperty.all(buttonTextColor),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(buttonRadius))),
    textStyle: MaterialStateProperty.all(const TextStyle(
      fontFamily: 'Rubik',
      fontStyle: buttonFontStyle,
      fontSize: buttonFontSize,
      fontWeight: FontWeight.w600,
    )));
