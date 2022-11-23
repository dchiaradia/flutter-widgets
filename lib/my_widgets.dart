library my_widgets;

import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:my_widgets/src/entities/my_colors_entity.dart';
import 'package:my_widgets/src/widgets/config.dart';

export 'src/widgets/config.dart';

export 'src/widgets/myButtons/my_buttons.dart';
export 'src/widgets/myColors/my_colors.dart';
export 'src/widgets/myInputs/my_input.dart';
export 'src/widgets/myText/my_text.dart';
export 'src/widgets/myTiles/my_tile.dart';

class MyWidget {
  loadJsonSettings(String path) async {
    print('loadJsonSettings');
    await _readJson(path);
  }

  Future<dynamic> _readJson(String path) async {
    final String response = await rootBundle.loadString(path);
    final data = await json.decode(response);
    final colors = data['colors'];
    _setColors(colors);
    return data;
  }

  _setColors(dynamic mapOfColors) {
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
  }
}
