import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_widgets/core/myWidgets/myButtons/my_buttons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            MyButtons.simple(
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
              fontSize: 22,
              iconSize: 24,
              backgroundColor: Color(0xffFFB311),
              textColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
