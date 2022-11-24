import 'package:flutter/material.dart';
import 'package:my_widgets/my_widgets.dart';

TextEditingController textEditingController1 = TextEditingController();
final _formKey = GlobalKey<FormState>();

List<Widget> get lstOfInputs => [
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
                focusedBorderColor: MyColors().confirm,
                minLines: 1),
            MySpace.vertical(12),
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
            MySpace.vertical(12),
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
            MySpace.vertical(12),
            MyInput(
                controller: textEditingController1,
                enabled: true,
                hintText: 'Informe o email',
                validate: null,
                textInputType: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.email),
                validatorType: ValidatorType.isEmail,
                minLines: 1),
            MySpace.vertical(12),
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
            MySpace.vertical(12),
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
            MySpace.vertical(32),
          ])),
    ];
