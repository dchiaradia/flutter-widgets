// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ui';

import 'package:equatable/equatable.dart';

class MyTextEntity extends Equatable {
  final double? textFontSizeH1;
  final double? textFontSizeH2;
  final double? textFontSizeH3;
  final double? textFontSizeH4;
  final double? textFontSizeH5;
  final double? textFontSizeH6;
  const MyTextEntity({
    this.textFontSizeH1,
    this.textFontSizeH2,
    this.textFontSizeH3,
    this.textFontSizeH4,
    this.textFontSizeH5,
    this.textFontSizeH6,
  });

  MyTextEntity copyWith({
    double? textFontSizeH1,
    double? textFontSizeH2,
    double? textFontSizeH3,
    double? textFontSizeH4,
    double? textFontSizeH5,
    double? textFontSizeH6,
  }) {
    return MyTextEntity(
      textFontSizeH1: textFontSizeH1 ?? this.textFontSizeH1,
      textFontSizeH2: textFontSizeH2 ?? this.textFontSizeH2,
      textFontSizeH3: textFontSizeH3 ?? this.textFontSizeH3,
      textFontSizeH4: textFontSizeH4 ?? this.textFontSizeH4,
      textFontSizeH5: textFontSizeH5 ?? this.textFontSizeH5,
      textFontSizeH6: textFontSizeH6 ?? this.textFontSizeH6,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textFontSizeH1': textFontSizeH1,
      'textFontSizeH2': textFontSizeH2,
      'textFontSizeH3': textFontSizeH3,
      'textFontSizeH4': textFontSizeH4,
      'textFontSizeH5': textFontSizeH5,
      'textFontSizeH6': textFontSizeH6,
    };
  }

  factory MyTextEntity.fromMap(Map<String, dynamic> map) {
    return MyTextEntity(
      textFontSizeH1: map['textFontSizeH1'] != null
          ? map['textFontSizeH1'].toDouble() as double
          : null,
      textFontSizeH2: map['textFontSizeH2'] != null
          ? map['textFontSizeH2'].toDouble() as double
          : null,
      textFontSizeH3: map['textFontSizeH3'] != null
          ? map['textFontSizeH3'].toDouble() as double
          : null,
      textFontSizeH4: map['textFontSizeH4'] != null
          ? map['textFontSizeH4'].toDouble() as double
          : null,
      textFontSizeH5: map['textFontSizeH5'] != null
          ? map['textFontSizeH5'].toDouble() as double
          : null,
      textFontSizeH6: map['textFontSizeH6'] != null
          ? map['textFontSizeH6'].toDouble() as double
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyTextEntity.fromJson(String source) =>
      MyTextEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      textFontSizeH1!,
      textFontSizeH2!,
      textFontSizeH3!,
      textFontSizeH4!,
      textFontSizeH5!,
      textFontSizeH6!,
    ];
  }
}
