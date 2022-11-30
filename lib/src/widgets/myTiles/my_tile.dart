// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../my.dart';

enum TileType { icon, widget }

class MyTile extends StatefulWidget {
  //MAIN PROPERTIES
  VoidCallback myCallback = () {};
  VoidCallback? myCallbackLeftAction;
  bool isChecked;
  bool? enableChecked;
  double? size = 60;

  TileType tileType = TileType.icon;
  Widget? prefixWidget;
  Widget? mainWidget;
  Widget? sufixWidget;

  //LAYOUT OPTIONS
  double borderRadius = buttonRadius;
  Color backgroundColor = MyColors().white;
  Color borderColor = MyColors().soft;
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
  String? title;
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
    this.size = 60,
  }) {
    borderRadius = borderRadius ?? borderRadius;
    backgroundColor = backgroundColor ?? backgroundColor;
    borderColor = borderColor ?? borderColor;
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
    tileType = TileType.icon;
  }

  MyTile.widget({
    this.isChecked = true,
    required this.prefixWidget,
    required this.mainWidget,
    this.sufixWidget,
    this.borderRadius = 18,
    this.size = 60,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.black,
    VoidCallback? callback,
  }) {
    enableChecked = false;
    tileType = TileType.widget;
    myCallback = callback ?? () {};
  }

  @override
  State<MyTile> createState() => _MyTileState();
}

class _MyTileState extends State<MyTile> {
  Widget createContent() {
    if (widget.tileType == TileType.icon) {
      return createIconContent();
    } else if (widget.tileType == TileType.widget) {
      return createWidgetContent();
    }
    return Container();
  }

  Widget createIconContent() {
    return Row(
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
              MyText.h5(text: widget.title!),
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
    );
  }

  Widget createWidgetContent() {
    return Row(
      children: [
        widget.prefixWidget ?? Container(),
        const SizedBox(
          width: 12,
        ),
        Expanded(child: widget.mainWidget ?? Container()),
        widget.sufixWidget ?? Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Padding(
          padding: EdgeInsets.only(left: 0, right: 0, top: 8),
          child: Container(
            height: widget.size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              border: Border.all(color: widget.borderColor),
              color: widget.backgroundColor,
            ),
            padding: EdgeInsets.only(left: 14, right: 10, top: 0),
            child: createContent(),
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
