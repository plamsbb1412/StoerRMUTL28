import 'package:flutter/material.dart';
import 'package:stoerrmutl/screens/home.dart';
import 'package:stoerrmutl/screens/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      title: 'RMUTL Stoer',
      home: Home(),
    );
  }
}
