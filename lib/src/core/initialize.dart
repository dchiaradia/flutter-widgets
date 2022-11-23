import 'dart:convert';

import 'package:flutter/services.dart';

import '../entities/my_buttons_entity.dart';
import '../entities/my_colors_entity.dart';
import '../entities/my_text_entity.dart';
import '../widgets/config.dart';

class initalize {
  Future<dynamic> readJson(String path) async {
    final String response = await rootBundle.loadString(path);
    final data = await json.decode(response);
    _setColorsSettings(data['colors']);
    _setTextSettings(data['text']);
    _setButtonsSettings(data['buttons']);
    return data;
  }

  _setColorsSettings(dynamic mapOfColors) {
    MyColorsEntity myColors = MyColorsEntity.fromMap(mapOfColors);
    mainBlackColor = myColors.mainBlackColor ?? mainBlackColor;
    mainDarkColor = myColors.mainDarkColor ?? mainDarkColor;
    mainMediumColor = myColors.mainMediumColor ?? mainMediumColor;
    mainSoftColor = myColors.mainSoftColor ?? mainSoftColor;
    mainWhiteColor = myColors.mainWhiteColor ?? mainWhiteColor;
    mainDisableColor = myColors.mainDisableColor ?? mainDisableColor;
    mainEnableColor = myColors.mainEnableColor ?? mainEnableColor;
    mainDangerColor = myColors.mainDangerColor ?? mainDangerColor;
    mainInfoColor = myColors.mainInfoColor ?? mainInfoColor;
    mainConfirmColor = myColors.mainConfirmColor ?? mainConfirmColor;
    mainAlertColor = myColors.mainAlertColor ?? mainAlertColor;
    mainDarkGrayColor = myColors.mainDarkGrayColor ?? mainDarkGrayColor;
    mainMediumGrayColor = myColors.mainMediumGrayColor ?? mainMediumGrayColor;
    mainSoftGrayColor = myColors.mainSoftGrayColor ?? mainSoftGrayColor;
  }

  _setTextSettings(dynamic mapOfTexts) {
    MyTextEntity myText = MyTextEntity.fromMap(mapOfTexts);
    textFontSizeH1 = myText.textFontSizeH1 ?? textFontSizeH1;
    textFontSizeH2 = myText.textFontSizeH2 ?? textFontSizeH2;
    textFontSizeH3 = myText.textFontSizeH3 ?? textFontSizeH3;
    textFontSizeH4 = myText.textFontSizeH4 ?? textFontSizeH4;
    textFontSizeH5 = myText.textFontSizeH5 ?? textFontSizeH5;
    textFontSizeH6 = myText.textFontSizeH6 ?? textFontSizeH6;
  }

  _setButtonsSettings(dynamic mapOfButtons) {
    MyButtonsEntity myButtons = MyButtonsEntity.fromMap(mapOfButtons);
    buttonHeight = myButtons.height ?? buttonHeight;
    buttonRadius = myButtons.radius ?? buttonRadius;
    buttonBackgroundColor = myButtons.backgroundColor ?? buttonBackgroundColor;
    buttonTextColor = myButtons.textColor ?? buttonTextColor;
    buttonIconColor = myButtons.buttonIconColor ?? buttonIconColor;
  }
}
