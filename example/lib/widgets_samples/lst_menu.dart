import 'package:flutter/material.dart';
import 'package:my_widgets/my.dart';

List<MyMenuItem> get lstOfMenuItens => [
      MyMenuItem(
          icon: Icons.home,
          child: MyText.h6(text: "Inicio"),
          enableArrow: false,
          hasBadge: false,
          itemHeight: 40,
          callback: () {
            print('clicou no inicio');
          }),
      MyMenuItem(
          icon: Icons.public,
          child: MyText.h6(text: "Websites"),
          itemHeight: 40,
          enableArrow: true,
          hasBadge: false,
          callback: () {
            print('clicou em website');
          }),
      MyMenuItem(
          icon: Icons.star,
          iconSize: 25,
          itemHeight: 40,
          child: MyText.h6(text: "Favoritos"),
          enableArrow: true,
          arrowColor: MyColors().dark,
          iconColor: MyColors().dark,
          callback: () {
            print('clicou no favorito');
          }),
      MyMenuItem(
          icon: Icons.health_and_safety,
          iconSize: 25,
          itemHeight: 40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText.h6(text: "Emergencia"),
              MyText.h7(text: "Liga para os contatos de emergencia.")
            ],
          ),
          enableArrow: true,
          arrowColor: MyColors().danger,
          iconColor: MyColors().danger,
          callback: () {
            print('clicou em emergencia');
          }),
    ];
