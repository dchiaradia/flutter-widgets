import 'package:example/widgets_samples/lst_avatars.dart';
import 'package:example/widgets_samples/lst_buttons.dart';
import 'package:example/widgets_samples/lst_inputs.dart';
import 'package:example/widgets_samples/lst_menu.dart';
import 'package:example/widgets_samples/lst_texts.dart';
import 'package:example/widgets_samples/lst_tiles.dart';
import 'package:flutter/material.dart';
import 'package:my_widgets/my_widgets.dart';

class MyWidgetsHomePage extends StatefulWidget {
  const MyWidgetsHomePage({super.key});

  @override
  State<MyWidgetsHomePage> createState() => _MyWidgetsHomePageState();
}

class _MyWidgetsHomePageState extends State<MyWidgetsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().softGrayColor,
      body: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 30,
            ),
            children: [
              MySpace.vertical(32),
              ...lstOfAvatars,
              MyText.h2(
                text: 'Menu',
                color: MyColors().black,
              ),
              MySpace.vertical(12),
              MyMenu(
                lstItens: lstOfMenuItens,
              ),
              MySpace.vertical(32),
              MyText.h2(
                text: 'Tipografias',
                color: MyColors().black,
              ),
              ...lstOfText,
              MyText.h2(
                text: 'Botões',
                color: MyColors().black,
              ),
              ...lstOfButtons,
              MyText.h2(
                text: 'Tiles',
                color: MyColors().black,
              ),
              ...lstOfTiles,
              MyText.h2(
                text: 'Input Texts',
                color: MyColors().black,
                textAlign: TextAlign.start,
              ),
              ...lstOfInputs,
              MySpace.vertical(64),
            ],
          ),
        ),
        MyBottomSheet(
            //PARA USAR O MYBOTTOMSHEET É NECESSÁRIO ESTAR EM UMA STACK
            maxHeight: 350,
            minHeight: 100,
            radius: 32,
            backgroundColor: MyColors().white,
            defaultState: PanelState.CLOSED,
            child: Column(
              children: [
                MyText.h2(
                  text: 'Menu',
                  color: MyColors().black,
                ),
                MyMenu(
                  lstItens: lstOfMenuItens,
                ),
                MySpace.vertical(32),
              ],
            )),
      ]),
    );
  }
}
