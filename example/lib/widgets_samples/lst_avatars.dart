import 'package:flutter/material.dart';
import 'package:my_widgets/my_widgets.dart';

List<Widget> get lstOfAvatars => [
      MyText.h2(
        text: 'Avatares & User Info',
        color: MyColors().black,
      ),
      MySpace.vertical(8),
      MyAvatar(
        size: 50,
        avatar: 'https://avatars.githubusercontent.com/u/11356452?v=4',
        borderSize: 5,
        borderColor: MyColors().confirm,
        hasBadges: true,
        badgedColor: MyColors().info,
        badgedLeft: 25,
        badgedTop: 60,
        badgedWidget: MyText.h6(
          text: 'New',
          color: MyColors().white,
        ),
      ).userTile(
        firstLine: MyText.h4(text: 'Eduardo Chiaradia'),
        secondLine: MyText.h6(text: 'eduardo@chiaradia.com.br'),
        thirdLine: MyText.h6(text: 'CPF: 325.***.***-65'),
        backgroundColor: MyColors().white,
      ),
      MySpace.vertical(12),
      // MyAvatar(
      //     size: 50,
      //     hasBadges: false,
      //     avatar: 'https://avatars.githubusercontent.com/u/11356452?v=4'),
      MySpace.vertical(32),
    ];
