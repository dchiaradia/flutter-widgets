// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:hexcolor/hexcolor.dart';

class MyColorsEntity extends Equatable {
  //Palette Colors
  final Color? mainBlackColor;
  final Color? mainDarkColor;
  final Color? mainMediumColor;
  final Color? mainSoftColor;
  final Color? mainWhiteColor;
  final Color? mainDisableColor;
  final Color? mainEnableColor;

  //Gray Palette
  final Color? mainDarkGrayColor;
  final Color? mainMediumGrayColor;
  final Color? mainSoftGrayColor;

  //Info Colors
  final Color? mainDangerColor;
  final Color? mainInfoColor;
  final Color? mainConfirmColor;
  final Color? mainAlertColor;
  const MyColorsEntity({
    this.mainBlackColor,
    this.mainDarkColor,
    this.mainMediumColor,
    this.mainSoftColor,
    this.mainWhiteColor,
    this.mainDisableColor,
    this.mainEnableColor,
    this.mainDarkGrayColor,
    this.mainMediumGrayColor,
    this.mainSoftGrayColor,
    this.mainDangerColor,
    this.mainInfoColor,
    this.mainConfirmColor,
    this.mainAlertColor,
  });

  MyColorsEntity copyWith({
    Color? mainBlackColor,
    Color? mainDarkColor,
    Color? mainMediumColor,
    Color? mainSoftColor,
    Color? mainWhiteColor,
    Color? mainDisableColor,
    Color? mainEnableColor,
    Color? mainDarkGrayColor,
    Color? mainMediumGrayColor,
    Color? mainSoftGrayColor,
    Color? mainDangerColor,
    Color? mainInfoColor,
    Color? mainConfirmColor,
    Color? mainAlertColor,
  }) {
    return MyColorsEntity(
      mainBlackColor: mainBlackColor ?? this.mainBlackColor,
      mainDarkColor: mainDarkColor ?? this.mainDarkColor,
      mainMediumColor: mainMediumColor ?? this.mainMediumColor,
      mainSoftColor: mainSoftColor ?? this.mainSoftColor,
      mainWhiteColor: mainWhiteColor ?? this.mainWhiteColor,
      mainDisableColor: mainDisableColor ?? this.mainDisableColor,
      mainEnableColor: mainEnableColor ?? this.mainEnableColor,
      mainDarkGrayColor: mainDarkGrayColor ?? this.mainDarkGrayColor,
      mainMediumGrayColor: mainMediumGrayColor ?? this.mainMediumGrayColor,
      mainSoftGrayColor: mainSoftGrayColor ?? this.mainSoftGrayColor,
      mainDangerColor: mainDangerColor ?? this.mainDangerColor,
      mainInfoColor: mainInfoColor ?? this.mainInfoColor,
      mainConfirmColor: mainConfirmColor ?? this.mainConfirmColor,
      mainAlertColor: mainAlertColor ?? this.mainAlertColor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mainBlackColor': mainBlackColor?.value,
      'mainDarkColor': mainDarkColor?.value,
      'mainMediumColor': mainMediumColor?.value,
      'mainSoftColor': mainSoftColor?.value,
      'mainWhiteColor': mainWhiteColor?.value,
      'mainDisableColor': mainDisableColor?.value,
      'mainEnableColor': mainEnableColor?.value,
      'mainDarkGrayColor': mainDarkGrayColor?.value,
      'mainMediumGrayColor': mainMediumGrayColor?.value,
      'mainSoftGrayColor': mainSoftGrayColor?.value,
      'mainDangerColor': mainDangerColor?.value,
      'mainInfoColor': mainInfoColor?.value,
      'mainConfirmColor': mainConfirmColor?.value,
      'mainAlertColor': mainAlertColor?.value,
    };
  }

  factory MyColorsEntity.fromMap(Map<String, dynamic> map) {
    return MyColorsEntity(
      mainBlackColor: map['mainBlackColor'] != null
          ? HexColor(map['mainBlackColor'])
          : null,
      mainDarkColor:
          map['mainDarkColor'] != null ? HexColor(map['mainDarkColor']) : null,
      mainMediumColor: map['mainMediumColor'] != null
          ? HexColor(map['mainMediumColor'])
          : null,
      mainSoftColor:
          map['mainSoftColor'] != null ? HexColor(map['mainSoftColor']) : null,
      mainWhiteColor: map['mainWhiteColor'] != null
          ? HexColor(map['mainWhiteColor'])
          : null,
      mainDisableColor: map['mainDisableColor'] != null
          ? HexColor(map['mainDisableColor'])
          : null,
      mainEnableColor: map['mainEnableColor'] != null
          ? HexColor(map['mainEnableColor'])
          : null,
      mainDarkGrayColor: map['mainDarkGrayColor'] != null
          ? HexColor(map['mainDarkGrayColor'])
          : null,
      mainMediumGrayColor: map['mainMediumGrayColor'] != null
          ? HexColor(map['mainMediumGrayColor'])
          : null,
      mainSoftGrayColor: map['mainSoftGrayColor'] != null
          ? HexColor(map['mainSoftGrayColor'])
          : null,
      mainDangerColor: map['mainDangerColor'] != null
          ? HexColor(map['mainDangerColor'])
          : null,
      mainInfoColor:
          map['mainInfoColor'] != null ? HexColor(map['mainInfoColor']) : null,
      mainConfirmColor: map['mainConfirmColor'] != null
          ? HexColor(map['mainConfirmColor'])
          : null,
      mainAlertColor: map['mainAlertColor'] != null
          ? HexColor(map['mainAlertColor'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyColorsEntity.fromJson(String source) =>
      MyColorsEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      mainBlackColor!,
      mainDarkColor!,
      mainMediumColor!,
      mainSoftColor!,
      mainWhiteColor!,
      mainDisableColor!,
      mainEnableColor!,
      mainDarkGrayColor!,
      mainMediumGrayColor!,
      mainSoftGrayColor!,
      mainDangerColor!,
      mainInfoColor!,
      mainConfirmColor!,
      mainAlertColor!,
    ];
  }
}
