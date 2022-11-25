// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_widgets/src/widgets/config.dart';

class MyText extends StatefulWidget {
  //TEXT OPTIONS
  String text;
  Color myTextColor = textColor;
  double myFontSize = buttonFontSize;
  TextStyle? myTextStyle;
  MainAxisAlignment myAlingment = MainAxisAlignment.start;
  TextAlign myTextAlign = textAlign;

  MyText({
    required this.text,
    double size = 20,
    Color color = textColor,
    String fontFamily = textFontFamily,
    FontWeight fontWeight = textFontWeight,
    FontStyle fontStyle = textFontStyle,
    TextAlign textAlign = textAlign,
  }) {
    myTextStyle = TextStyle(
      color: color,
      fontSize: size,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
    myTextAlign = textAlign;
  }

  MyText.h1({
    required this.text,
    Color color = textColor,
    String fontFamily = textFontFamily,
    FontWeight fontWeight = textFontWeight,
    FontStyle fontStyle = textFontStyle,
    TextAlign textAlign = textAlign,
  }) {
    myTextStyle = TextStyle(
      color: color,
      fontSize: textFontSizeH1,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
    myTextAlign = textAlign;
  }

  MyText.h2({
    required this.text,
    Color color = textColor,
    String fontFamily = textFontFamily,
    FontWeight fontWeight = textFontWeight,
    FontStyle fontStyle = textFontStyle,
    TextAlign textAlign = textAlign,
  }) {
    myTextStyle = TextStyle(
      color: color,
      fontSize: textFontSizeH2,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
    myTextAlign = textAlign;
  }

  MyText.h3({
    required this.text,
    Color color = textColor,
    String fontFamily = textFontFamily,
    FontWeight fontWeight = textFontWeight,
    FontStyle fontStyle = textFontStyle,
    TextAlign textAlign = textAlign,
  }) {
    myTextStyle = TextStyle(
      color: color,
      fontSize: textFontSizeH3,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
    myTextAlign = textAlign;
  }

  MyText.h4({
    required this.text,
    Color color = textColor,
    String fontFamily = textFontFamily,
    FontWeight fontWeight = textFontWeight,
    FontStyle fontStyle = textFontStyle,
    TextAlign textAlign = textAlign,
  }) {
    myTextStyle = TextStyle(
      color: color,
      fontSize: textFontSizeH4,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
    myTextAlign = textAlign;
  }

  MyText.h5({
    required this.text,
    Color color = textColor,
    String fontFamily = textFontFamily,
    FontWeight fontWeight = textFontWeight,
    FontStyle fontStyle = textFontStyle,
    TextAlign textAlign = textAlign,
  }) {
    myTextStyle = TextStyle(
      color: color,
      fontSize: textFontSizeH5,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  MyText.h6({
    required this.text,
    Color color = textColor,
    String fontFamily = textFontFamily,
    FontWeight fontWeight = textFontWeight,
    FontStyle fontStyle = textFontStyle,
    TextAlign textAlign = textAlign,
  }) {
    myTextStyle = TextStyle(
      color: color,
      fontSize: textFontSizeH6,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
    myTextAlign = textAlign;
  }

  MyText.h7({
    required this.text,
    Color color = textColor,
    String fontFamily = textFontFamily,
    FontWeight fontWeight = textFontWeight,
    FontStyle fontStyle = textFontStyle,
    TextAlign textAlign = textAlign,
  }) {
    myTextStyle = TextStyle(
      color: color,
      fontSize: textFontSizeH7,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
    myTextAlign = textAlign;
  }

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: widget.myTextStyle,
      softWrap: true,
      textAlign: widget.myTextAlign,
    );
  }
}
