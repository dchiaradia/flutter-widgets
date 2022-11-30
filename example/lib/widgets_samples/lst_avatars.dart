import 'package:flutter/material.dart';
import 'package:my_widgets/my.dart';

List<Widget> get lstOfAvatars => [
      MyText.h2(
        text: 'Avatares & User Info',
        color: MyColors().black,
      ),
      MySpace.vertical(8),
      MyAvatar(
        size: 40,
        avatar: 'https://avatars.githubusercontent.com/u/11356452?v=4',
        borderSize: 3,
        borderColor: MyColors().confirm,
        badgedColor: MyColors().danger,
        position: BadgePosition.bottomStart(start: 20),
        badgedWidget: MyText.h6(
          text: 'New',
          color: MyColors().white,
        ),
      ).userTile(
          firstLine: MyText.h5(text: 'Eduardo Chiaradia'),
          secondLine: MyText.h6(text: 'eduardo@chiaradia.com.br'),
          thirdLine: Column(
            children: [
              MyText.h7(text: 'CPF: 325.***.***-65'),
            ],
          ),
          backgroundColor: MyColors().white,
          bottomWidget: Column(
            children: [
              Container(
                color: MyColors().mediumGrayColor,
                height: 1,
              ),
              MySpace.vertical(12),
              Row(
                children: const [
                  Expanded(child: Icon(Icons.phone)),
                  Expanded(child: Icon(Icons.email)),
                  Expanded(child: Icon(Icons.map)),
                ],
              ),
            ],
          )),
      MySpace.vertical(24),
      MyAvatar(
        size: 40,
        avatar: 'https://avatars.githubusercontent.com/u/11356452?v=4',
      ),
      MySpace.vertical(32),
    ];
