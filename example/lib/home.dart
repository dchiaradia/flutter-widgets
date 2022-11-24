import 'package:example/widgets_samples/lst_buttons.dart';
import 'package:example/widgets_samples/lst_inputs.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 30,
          ),
          children: [
            MySpace.vertical(32),
            const MyAvatar(
                size: 90,
                avatar: 'https://avatars.githubusercontent.com/u/11356452?v=4'),
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
          ],
        ),
      ),
    );
  }
}
