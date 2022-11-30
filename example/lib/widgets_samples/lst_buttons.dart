import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_widgets/my.dart';

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
          MySpace(
            widthValue: 8,
          ),
          MyButtons.switchButton(
            initialState: true,
            width: 100,
            onCallback: () {
              print('Ativou');
            },
            offCallback: () {
              print('Inativou');
            },
            onIcon: FontAwesomeIcons.check,
            offIcon: FontAwesomeIcons.powerOff,
            onText: Text(
              'On',
              style: TextStyle(color: MyColors().white),
            ),
            offText: Text('Off'),
            onBackGroundColor: MyColors().confirm,
            offBackGroundColor: MyColors().mediumGrayColor,
            onIconColor: MyColors().confirm,
            offIconColor: MyColors().mediumGrayColor,
            iconSize: 25,
          ),
        ],
      ),
      MySpace.vertical(12),
      MyButtons.switchButton(
        initialState: false,
        width: 200,
        onCallback: () {
          print('Ativou');
        },
        offCallback: () {
          print('Inativou');
        },
        onIcon: FontAwesomeIcons.trainSubway,
        offIcon: FontAwesomeIcons.trainSubway,
        onText: Text(
          'Trem habilitado',
          style: TextStyle(color: MyColors().black),
        ),
        offText: Text('Trem não habilitado'),
        onBackGroundColor: MyColors().dark,
        offBackGroundColor: MyColors().mediumGrayColor,
        onIconColor: MyColors().dark,
        offIconColor: MyColors().mediumGrayColor,
        iconSize: 25,
      ),
      MySpace.vertical(32),
    ];
