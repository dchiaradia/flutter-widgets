// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/myWidgets/myColors/my_colors.dart';
import 'package:flutter_widgets/core/myWidgets/styles.dart';

class MyButtons extends StatefulWidget {
  //PROPERTIES
  double myHeight = buttonHeight;
  VoidCallback myCallback = () {};
  bool isLoadingButton = false;
  bool _isLoading = false;

  //TEXT OPTIONS
  String text;
  Color myTextColor = buttonTextColor;
  double myFontSize = buttonFontSize;
  MainAxisAlignment myAlingment = MainAxisAlignment.center;

  //LAYOUT OPTIONS
  double borderRadius = buttonRadius;
  ButtonStyle? style;

  //ICON OPTIONS
  IconData? mySufixIcon;
  IconData? myPrefixIcon;
  double? myIconSize = 12;
  Color myIconColor = buttonIconColor;

  MyButtons({
    required this.text,
    required callback,
    this.isLoadingButton = false,
  }) {
    myCallback = callback;
    style = ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(buttonBackgroundColor),
        foregroundColor: MaterialStateProperty.all(buttonTextColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius))),
        textStyle: MaterialStateProperty.all(const TextStyle(
          fontFamily: buttonFontFamily,
          fontStyle: buttonFontStyle,
          fontSize: buttonFontSize,
          fontWeight: buttonFontWeight,
        )));
  }

  MyButtons.custom({
    required this.text,
    required callback,
    MainAxisAlignment? alingment,
    double? height,
    Color? backgroundColor,
    Color? textColor,
    double? borderRadius,
    double? fontSize = buttonFontSize,
    String? fontFamily = buttonFontFamily,
    FontStyle? fontStyle = buttonFontStyle,
    FontWeight fontWeight = FontWeight.w600,
    IconData? sufixIcon,
    IconData? prefixIcon,
    Color? iconColor,
    double iconSize = 12,
    this.isLoadingButton = false,
  }) {
    myCallback = callback;

    myHeight = height ?? buttonHeight;
    myTextColor = textColor ?? buttonTextColor;
    myAlingment = alingment ?? myAlingment;

    myPrefixIcon = prefixIcon;
    mySufixIcon = sufixIcon;
    myIconSize = iconSize;
    myIconColor = iconColor ?? myIconColor;

    style = ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor:
            MaterialStateProperty.all(backgroundColor ?? buttonBackgroundColor),
        foregroundColor: MaterialStateProperty.all(myTextColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? buttonRadius))),
        textStyle: MaterialStateProperty.all(TextStyle(
          fontFamily: fontFamily,
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
            widget._isLoading = true;
            setState(() {});
          },
          style: widget.style,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: widget.myAlingment,
            children: [
              (widget.myPrefixIcon != null)
                  ? Icon(
                      widget.myPrefixIcon,
                      color: widget.myIconColor,
                      size: widget.myIconSize,
                    )
                  : Container(),
              const SizedBox(
                width: 12,
              ),
              Text(widget.text),
              const SizedBox(
                width: 12,
              ),
              (widget.mySufixIcon != null)
                  ? Icon(
                      widget.mySufixIcon,
                      color: widget.myIconColor,
                      size: widget.myIconSize,
                    )
                  : Container(),
              (widget.isLoadingButton && widget._isLoading)
                  ? const Expanded(
                      child: Align(
                      alignment: Alignment.centerRight,
                      child: CircularProgressIndicator.adaptive(),
                    ))
                  : Container(),
            ],
          )),
    );
  }
}
