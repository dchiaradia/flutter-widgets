// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_widgets/core/myWidgets/myColors/my_colors.dart';
import 'package:flutter_widgets/core/myWidgets/myText/my_text.dart';
import 'package:flutter_widgets/core/myWidgets/styles.dart';

class MyTile extends StatefulWidget {
  //MAIN PROPERTIES
  VoidCallback myCallback = () {};
  VoidCallback? myCallbackLeftAction;
  bool isChecked;
  bool? enableChecked;

  //LAYOUT OPTIONS
  double myBorderRadius = buttonRadius;
  Color myBackgroundColor = MyColors().white;
  Color myBorderColor = MyColors().soft;
  Color myTextColor = MyColors().soft;

  //ICON OPTIONS
  IconData? mySufixIcon;
  IconData? myPrefixIcon;
  double? myIconSize = 32;
  double? mySufixIconSize = 32;
  Color? myIconColor = MyColors().disable;
  Color? myIconCheckedColor = MyColors().enable;
  Color? mySufixColor = MyColors().enable;

  //TEXT OPTIONS
  String title;
  String? subtitle;
  String? leftText;
  Color? leftTextColor;

  MyTile({
    Key? key,
    double? borderRadius,
    Color? backgroundColor,
    Color? borderColor,
    Color? textColor,
    IconData? sufixIcon,
    required IconData prefixIcon,
    Color? iconDisableColor,
    Color? iconEnableColor,
    Color? sufixColor,
    double? iconSize,
    double? sufixIconSize,
    this.isChecked = false,
    VoidCallback? callback,
    required this.title,
    this.subtitle,
    this.leftText,
    this.leftTextColor,
    this.myCallbackLeftAction,
    this.enableChecked = false,
  }) {
    myBorderRadius = borderRadius ?? myBorderRadius;
    myBackgroundColor = backgroundColor ?? myBackgroundColor;
    myBorderColor = borderColor ?? myBorderColor;
    myTextColor = textColor ?? myTextColor;
    mySufixIcon = sufixIcon ?? mySufixIcon;
    myPrefixIcon = prefixIcon;
    myIconColor = iconDisableColor ?? myIconColor;
    myIconSize = iconSize ?? myIconSize;
    myIconCheckedColor = iconEnableColor ?? myIconCheckedColor;
    myCallback = callback ?? myCallback;
    mySufixColor = sufixColor ?? mySufixColor;
    mySufixIconSize = sufixIconSize ?? mySufixIconSize;
    leftTextColor = leftTextColor ?? myTextColor;
  }

  @override
  State<MyTile> createState() => _MyTileState();
}

class _MyTileState extends State<MyTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Padding(
          padding: EdgeInsets.only(left: 0, right: 0, top: 8),
          child: Container(
            height: 67,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.myBorderRadius),
              border: Border.all(color: widget.myBorderColor),
              color: widget.myBackgroundColor,
            ),
            padding: EdgeInsets.only(left: 14, right: 10, top: 0),
            child: Row(
              children: [
                Icon(
                  widget.myPrefixIcon,
                  color: (widget.isChecked)
                      ? widget.myIconCheckedColor
                      : widget.myIconColor,
                  size: widget.myIconSize,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText.h5(text: widget.title),
                      (widget.subtitle != null)
                          ? MyText.h6(text: widget.subtitle!)
                          : Container(),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      if (widget.myCallbackLeftAction != null) {
                        widget.myCallbackLeftAction!();
                      }
                    },
                    child: Row(children: [
                      (widget.leftText != null)
                          ? MyText.h6(
                              text: widget.leftText!,
                              color: widget.leftTextColor!,
                            )
                          : Container(),
                      (widget.mySufixIcon != null)
                          ? Icon(
                              widget.mySufixIcon,
                              color: (widget.mySufixColor != null)
                                  ? widget.mySufixColor
                                  : widget.myIconCheckedColor,
                              size: widget.mySufixIconSize,
                            )
                          : Container(),
                    ])),
              ],
            ),
          ),
        ),
        onTap: () async {
          print('clicou no tile');
          widget.myCallback();
          if (widget.enableChecked!) {
            widget.isChecked = (widget.isChecked) ? false : true;
          }
          setState(() {});
        });
  }
}
