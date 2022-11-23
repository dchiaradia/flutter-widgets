import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_widgets/my_widgets.dart';

import 'home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyWidget().loadJsonSettings('assets/example1.json');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidgetsHomePage(),
    );
  }
}