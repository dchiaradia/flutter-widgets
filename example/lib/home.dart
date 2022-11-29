import 'package:example/widgets_samples/lst_avatars.dart';
import 'package:example/widgets_samples/lst_buttons.dart';
import 'package:example/widgets_samples/lst_inputs.dart';
import 'package:example/widgets_samples/lst_menu.dart';
import 'package:example/widgets_samples/lst_texts.dart';
import 'package:example/widgets_samples/lst_tiles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_widgets/my_widgets.dart';

class MyWidgetsHomePage extends StatefulWidget {
  MyWidgetsHomePage({super.key});

  int value = 0;

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
              MyButtons.switchButton(
                callback: () {
                  print('switchbutton');
                  setState(() {});
                },
                icon: FontAwesomeIcons.strava,
                iconColor: MyColors().white,
                iconSize: 24,
                backgroundColor: MyColors().dark,
              ),
              MyText.h2(
                text: 'Tiles',
                color: MyColors().black,
              ),
              MyTile.widget(
                prefixWidget: MyAvatar(
                  size: 20,
                  borderColor: (widget.value == 0)
                      ? MyColors().dark
                      : MyColors().darkGrayColor,
                  borderSize: 3,
                  avatar:
                      'https://avatars.githubusercontent.com/u/11356452?v=4',
                ),
                mainWidget: MyText(text: 'Tile de Widgets'),
                sufixWidget: MyText.h6(
                  text: 'Excluir',
                  color: MyColors().danger,
                ),
                size: 60,
                borderColor: (widget.value == 0)
                    ? MyColors().dark
                    : MyColors().softGrayColor,
                callback: () {
                  print('Callback');
                  setState(() {
                    widget.value = 0;
                  });
                },
              ),
              MyTile.widget(
                prefixWidget: MyAvatar(
                  size: 20,
                  borderColor: (widget.value == 1)
                      ? MyColors().dark
                      : MyColors().darkGrayColor,
                  borderSize: 3,
                  avatar:
                      'https://avatars.githubusercontent.com/u/11356452?v=4',
                ),
                mainWidget: MyText(text: 'Tile de Widgets'),
                sufixWidget: MyText.h6(
                  text: 'Excluir',
                  color: MyColors().danger,
                ),
                size: 60,
                borderColor: (widget.value == 1)
                    ? MyColors().dark
                    : MyColors().softGrayColor,
                callback: () {
                  print('Callback');
                  setState(() {
                    widget.value = 1;
                  });
                },
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
