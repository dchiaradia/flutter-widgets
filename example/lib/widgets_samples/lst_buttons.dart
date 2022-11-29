import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      MySpace.vertical(12),
      Row(
        children: [
          MyButtons.roundIcon(
            callback: () {},
            icon: Icons.lock,
            iconColor: MyColors().white,
            iconSize: 25,
            backgroundColor: MyColors().confirm,
            isLoadingButton: true,
          ),
          MySpace(
            widthValue: 8,
          ),
          MyButtons.roundIcon(
            callback: () {
              print('teste');
            },
            icon: FontAwesomeIcons.facebookF,
            iconColor: MyColors().white,
            iconSize: 25,
            backgroundColor: MyColors().info,
            isLoadingButton: true,
          ),
          MySpace(
            widthValue: 8,
          ),
          MyButtons.roundIcon(
            callback: () {
              print('teste');
            },
            icon: FontAwesomeIcons.ccMastercard,
            iconColor: MyColors().white,
            iconSize: 15,
            height: 30,
            backgroundColor: MyColors().danger,
            isLoadingButton: true,
          ),
          MySpace(
            widthValue: 8,
          ),
          MyButtons.roundIcon(
            callback: () {
              print('teste');
            },
            icon: FontAwesomeIcons.apple,
            iconColor: MyColors().white,
            iconSize: 25,
            backgroundColor: MyColors().black,
            isLoadingButton: true,
          ),
        ],
      ),
      MySpace.vertical(32),
    ];
