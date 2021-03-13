import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: App(),
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 28, 30, 40),
          fontFamily: 'AlegreyaSans'),
    );
  }
}
