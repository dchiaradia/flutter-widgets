import 'package:flutter/material.dart';
import 'package:my_widgets/my_widgets.dart';

List<Widget> get lstOfButtons => [
      MySpace.vertical(12),
      MyButtons(
        text: 'Salvar',
        callback: () {},
      ),
      MySpace.vertical(12),
      MyButtons.custom(
        text: 'Ligar',
        alingment: MainAxisAlignment.start,
        callback: () {},
        prefixIcon: Icons.home,
        sufixIcon: Icons.phone,
        iconColor: MyColors().white,
        fontSize: 20,
        iconSize: 24,
        backgroundColor: MyColors().dark,
        textColor: MyColors().white,
        fontFamily: 'Verdana',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        isLoadingButton: true,
      ),
      MySpace.vertical(32),
    ];
