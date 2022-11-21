// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/myWidgets/styles.dart';

class MyButtons extends StatefulWidget {
  String text;
  Color myTextColor = Colors.white;
  double myFontSize = buttonFontSize;
  MainAxisAlignment myAlingment = MainAxisAlignment.center;

  double myHeight = buttonHeight;
  IconData? mySufixIcon;
  IconData? myPrefixIcon;
  double? myIconSize = 12;

  var myCallback;
  bool isLoadingButton = false;
  double borderRadius = buttonRadius;
  ButtonStyle? style;

  MyButtons.simple({required this.text, required callback}) {
    style = defaultButtonStyle;
    myCallback = callback;
  }

  MyButtons.custom({
    required this.text,
    MainAxisAlignment? alingment,
    double? height,
    Color? backgroundColor,
    Color? textColor,
    double? borderRadius,
    double fontSize = 16,
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.w600,
    IconData? sufixIcon,
    IconData? prefixIcon,
    double iconSize = 12,
    required callback,
    this.isLoadingButton = false,
  }) {
    myCallback = callback;

    myHeight = height ?? buttonHeight;
    myTextColor = textColor ?? buttonTextColor;
    myAlingment = alingment ?? myAlingment;

    myPrefixIcon = prefixIcon;
    mySufixIcon = sufixIcon;
    myIconSize = iconSize;

    style = ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor:
            MaterialStateProperty.all(backgroundColor ?? buttonBackgroundColor),
        foregroundColor:
            MaterialStateProperty.all(textColor ?? buttonTextColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? buttonRadius))),
        textStyle: MaterialStateProperty.all(TextStyle(
          fontFamily: 'Rubik',
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
        )));
  }

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.myHeight,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: () {
            widget.myCallback();
          },
          style: widget.style,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: widget.myAlingment,
            children: [
              (widget.myPrefixIcon != null)
                  ? Icon(
                      widget.myPrefixIcon,
                      color: widget.myTextColor,
                      size: widget.myIconSize,
                    )
                  : Container(),
              SizedBox(
                width: 12,
              ),
              Text(widget.text),
              SizedBox(
                width: 12,
              ),
              (widget.mySufixIcon != null)
                  ? Icon(
                      widget.mySufixIcon,
                      color: widget.myTextColor,
                      size: widget.myIconSize,
                    )
                  : Container(),
            ],
          )),
    );
  }
}
