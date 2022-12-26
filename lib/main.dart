import 'package:calculator/text_demo.dart';
import 'package:flutter/material.dart';

import 'cotainer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var center = Center(child: Text("calculator"));
    return MaterialApp(
      title: "calculator.UD",
      home: Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          title: Center(child: Text("ujjal.Dkl(calculator)")),
        ),
        body: MyContainer(),
      ),
    );
  }
}
