import 'package:flutter/material.dart';
import 'package:uiprojects/designone/instahome.dart';
import 'package:uiprojects/designone/navigator.dart';
import 'package:uiprojects/uipages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UiPages(),
    );
  }
}
