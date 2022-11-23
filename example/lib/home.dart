import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_widgets/my_widgets.dart';

class MyWidgetsHomePage extends StatefulWidget {
  const MyWidgetsHomePage({super.key});

  @override
  State<MyWidgetsHomePage> createState() => _MyWidgetsHomePageState();
}

class _MyWidgetsHomePageState extends State<MyWidgetsHomePage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController textEditingController1 = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 30,
          ),
          children: [
            const SizedBox(
              height: 30,
            ),
            MyText.h2(
              text: 'Tipografias',
              color: MyColors().black,
            ),
            MyText.h1(text: 'Tipografia h1'),
            MyText.h2(text: 'Tipografia h2'),
            MyText.h3(text: 'Tipografia h3'),
            MyText.h4(text: 'Tipografia h4'),
            MyText.h5(text: 'Tipografia h5'),
            MyText.h6(text: 'Tipografia h6'),
            const SizedBox(
              height: 20,
            ),
            MyText.h2(
              text: 'Botões',
              color: MyColors().black,
            ),
            MyButtons(
              text: 'Salvar',
              callback: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            MyButtons.custom(
              text: 'Ligar',
              alingment: MainAxisAlignment.start,
              callback: () {},
              prefixIcon: Icons.home,
              sufixIcon: Icons.umbrella,
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
            const SizedBox(
              height: 20,
            ),
            MyText.h2(
              text: 'Tiles',
              color: MyColors().black,
            ),
            MyTile(
              title: 'Titulo',
              subtitle: 'Selecione o Subtitulo',
              prefixIcon: Icons.home,
              sufixIcon: Icons.arrow_right,
              iconDisableColor: MyColors().mediumGrayColor,
              iconEnableColor: MyColors().dark,
              isChecked: true,
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
            const SizedBox(
              height: 20,
            ),
            MyText.h2(
              text: 'Input Texts',
              color: MyColors().black,
              textAlign: TextAlign.start,
            ),
            Form(
              key: _formKey,
              child: Column(children: [
                MyInput(
                    textInputType: TextInputType.name,
                    controller: textEditingController1,
                    enabled: true,
                    hintText: 'Informe o seu Nome',
                    validate: null,
                    fontSize: 16,
                    minLines: 1),
                const SizedBox(
                  height: 8,
                ),
                MyInput(
                    controller: textEditingController1,
                    enabled: true,
                    hintText: 'Informe o telefone',
                    validate: null,
                    maskText: '(##) #####-####',
                    textInputType: TextInputType.number,
                    prefixIcon: Icon(Icons.phone),
                    validatorType: ValidatorType.isPhone,
                    minLines: 1),
                const SizedBox(
                  height: 8,
                ),
                MyInput(
                    controller: textEditingController1,
                    enabled: true,
                    hintText: 'Informe CEP',
                    validate: null,
                    maskText: '#####-###',
                    textInputType: TextInputType.number,
                    prefixIcon: Icon(Icons.markunread_mailbox_outlined),
                    validatorType: ValidatorType.isCEP,
                    minLines: 1),
                const SizedBox(
                  height: 8,
                ),
                MyInput(
                    controller: textEditingController1,
                    enabled: true,
                    hintText: 'Informe o email',
                    validate: null,
                    textInputType: TextInputType.emailAddress,
                    prefixIcon: Icon(Icons.email),
                    validatorType: ValidatorType.isEmail,
                    minLines: 1),
                const SizedBox(
                  height: 8,
                ),
                MyInput(
                    controller: textEditingController1,
                    enabled: true,
                    hintText: 'Informe o CPF',
                    validate: null,
                    textInputType: TextInputType.number,
                    prefixIcon: Icon(Icons.document_scanner_outlined),
                    validatorType: ValidatorType.isCPF,
                    backgroundEnableColor: Colors.lightBlue,
                    textColor: Colors.white,
                    minLines: 1),
                const SizedBox(
                  height: 16,
                ),
                MyButtons.custom(
                  text: 'Validar Formulario',
                  alingment: MainAxisAlignment.start,
                  callback: () {
                    var form = _formKey.currentState;
                    var x = form!.validate();
                    print(x);
                  },
                  prefixIcon: Icons.check,
                  iconColor: MyColors().white,
                  fontSize: 20,
                  iconSize: 24,
                  backgroundColor: MyColors().confirm,
                  textColor: MyColors().white,
                  fontFamily: 'Verdana',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  isLoadingButton: false,
                ),
                const SizedBox(
                  height: 8,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
