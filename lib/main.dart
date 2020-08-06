import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_form/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Simple',
      home : SignUp()
    );
  }
}
