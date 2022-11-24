import 'package:flutter/material.dart';
import 'package:my_widgets/my_widgets.dart';

List<Widget> get lstOfTiles => [
      MyTile(
        title: 'Titulo',
        subtitle: 'Selecione o Subtitulo',
        prefixIcon: Icons.home,
        sufixIcon: Icons.arrow_right,
        iconDisableColor: MyColors().mediumGrayColor,
        iconEnableColor: MyColors().dark,
        isChecked: false,
        enableChecked: true,
      ),
      MyTile(
        title: 'Titulo',
        subtitle: 'Selecione o Subtitulo',
        prefixIcon: Icons.home,
        sufixIcon: Icons.remove_circle_outline,
        sufixColor: MyColors().danger,
        sufixIconSize: 18,
        isChecked: true,
        leftText: 'Remover',
        leftTextColor: MyColors().danger,
        iconEnableColor: MyColors().dark,
        myCallbackLeftAction: () {
          print('Clicou no remover');
        },
      ),
      MySpace.vertical(32),
    ];
