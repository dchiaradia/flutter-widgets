// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:hexcolor/hexcolor.dart';

class MyButtonsEntity extends Equatable {
  final double? height;
  final double? radius;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? buttonIconColor;
  const MyButtonsEntity({
    this.height,
    this.radius,
    this.backgroundColor,
    this.textColor,
    this.buttonIconColor,
  });

  MyButtonsEntity copyWith({
    double? height,
    double? radius,
    Color? backgroundColor,
    Color? textColor,
    Color? buttonIconColor,
    double? buttonFontSize,
  }) {
    return MyButtonsEntity(
      height: height ?? this.height,
      radius: radius ?? this.radius,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      buttonIconColor: buttonIconColor ?? this.buttonIconColor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'radius': radius,
      'backgroundColor': backgroundColor?.value,
      'textColor': textColor?.value,
      'buttonIconColor': buttonIconColor?.value,
    };
  }

  factory MyButtonsEntity.fromMap(Map<String, dynamic> map) {
    return MyButtonsEntity(
      height: map['height'] != null ? map['height'].toDouble() as double : null,
      radius: map['radius'] != null ? map['radius'].toDouble() as double : null,
      backgroundColor: map['backgroundColor'] != null
          ? HexColor(map['backgroundColor'])
          : null,
      textColor: map['textColor'] != null ? HexColor(map['textColor']) : null,
      buttonIconColor: map['buttonIconColor'] != null
          ? HexColor(map['buttonIconColor'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyButtonsEntity.fromJson(String source) =>
      MyButtonsEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      height!,
      radius!,
      backgroundColor!,
      textColor!,
      buttonIconColor!,
    ];
  }
}
