import 'package:flutter/material.dart';
import 'package:my_widgets/my.dart';
import 'package:rolling_switch/rolling_switch.dart';

enum ButtonType { roundIcon, square, switchButton }

class MyButtons extends StatefulWidget {
  //PROPERTIES
  double myHeight = buttonHeight;
  VoidCallback myCallback = () {};
  bool isLoadingButton = false;
  bool _isLoading = false;
  ButtonType buttonType = ButtonType.square;
  Color myBackgroundColor = MyColors().dark;
  bool? value;
  double width = 100;

  //PROPERTIES FOR SWITCH BUTTONS
  VoidCallback onCallback = () {};
  VoidCallback offCallback = () {};
  Color? offBackGroundColor = MyColors().mediumGrayColor;
  Color? onBackGroundColor = MyColors().dark;
  Color? offIconColor = MyColors().mediumGrayColor;
  Color? onIconColor = MyColors().dark;
  IconData? onIcon = Icons.check_circle;
  IconData? offIcon = Icons.check;
  Text? onText = Text('Ativo');
  Text? offText = Text('Inativo');
  bool initialState = false;

  //TEXT OPTIONS
  String? text;
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
    buttonType = ButtonType.square;
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
    buttonType = ButtonType.square;

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

  MyButtons.roundIcon({
    required callback,
    double? height,
    Color? backgroundColor,
    required IconData icon,
    Color? iconColor,
    double iconSize = 12,
    this.isLoadingButton = false,
  }) {
    myCallback = callback;
    buttonType = ButtonType.roundIcon;
    myBackgroundColor = backgroundColor ?? myBackgroundColor;

    myHeight = height ?? buttonHeight;
    myIconSize = iconSize;
    myIconColor = iconColor ?? myIconColor;
    myPrefixIcon = icon;

    style = ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor:
          MaterialStateProperty.all(backgroundColor ?? buttonBackgroundColor),
      foregroundColor: MaterialStateProperty.all(myTextColor),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius))),
    );
  }

  MyButtons.switchButton(
      {required this.onCallback,
      required this.offCallback,
      required this.initialState,
      double? height,
      this.width = 150,
      this.onBackGroundColor,
      this.offBackGroundColor,
      this.onIconColor,
      this.offIconColor,
      this.onIcon,
      this.offIcon,
      double iconSize = 12,
      this.onText,
      this.offText}) {
    buttonType = ButtonType.switchButton;
    myHeight = height ?? buttonHeight;
    myIconSize = iconSize;
  }

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    if (widget.buttonType == ButtonType.square) {
      return createSquareButton();
    } else if (widget.buttonType == ButtonType.roundIcon) {
      return createIconButton();
    } else {
      return createSwitchButton();
    }
  }

  Widget createSquareButton() {
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
              Text(widget.text!),
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

  Widget createIconButton() {
    return Ink(
      decoration: ShapeDecoration(
        color: widget.myBackgroundColor,
        shape: CircleBorder(),
      ),
      height: widget.myHeight,
      child: IconButton(
        iconSize: widget.myIconSize,
        icon: Icon(widget.myPrefixIcon),
        color: widget.myIconColor,
        onPressed: () {
          widget.myCallback();
          widget._isLoading = true;
          setState(() {});
        },
      ),
    );
  }

  Widget createSwitchButton() {
    return Row(
      children: [
        RollingSwitch.icon(
          width: widget.width,
          initialState: widget.initialState,
          onChanged: (bool state) {
            (state) ? widget.onCallback() : widget.offCallback();
            setState(() {});
          },
          rollingInfoRight: RollingIconInfo(
              icon: widget.onIcon!,
              text: widget.onText,
              iconColor: widget.onIconColor,
              backgroundColor: widget.onBackGroundColor ?? MyColors().confirm),
          rollingInfoLeft: RollingIconInfo(
            icon: widget.offIcon!,
            text: widget.offText,
            iconColor: widget.offIconColor,
            backgroundColor:
                widget.offBackGroundColor ?? MyColors().mediumGrayColor,
          ),
        ),
      ],
    );
  }
}
