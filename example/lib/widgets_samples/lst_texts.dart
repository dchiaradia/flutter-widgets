import 'package:flutter/material.dart';
import 'package:my_widgets/my.dart';

List<Widget> get lstOfText => [
      MySpace.vertical(12),
      MyText.h1(text: 'Tipografia h1', color: MyColors().dark),
      MyText.h2(text: 'Tipografia h2', color: MyColors().dark),
      MyText.h3(text: 'Tipografia h3', color: MyColors().dark),
      MyText.h4(text: 'Tipografia h4', color: MyColors().dark),
      MyText.h5(text: 'Tipografia h5', color: MyColors().dark),
      MyText.h6(text: 'Tipografia h6', color: MyColors().dark),
      MyText.h7(text: 'Tipografia h7', color: MyColors().dark),
      MySpace.vertical(32),
    ];
