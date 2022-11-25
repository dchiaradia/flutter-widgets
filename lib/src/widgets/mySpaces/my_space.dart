// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySpace extends StatelessWidget {
  double? heightValue = 0;
  double? widthValue = 0;

  MySpace({
    Key? key,
    this.heightValue,
    this.widthValue,
  }) : super(key: key);

  MySpace.horizontal(double value) {
    widthValue = value;
  }

  MySpace.vertical(double value) {
    heightValue = value;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightValue,
      width: widthValue,
    );
  }
}
