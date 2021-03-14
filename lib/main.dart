import 'package:flutter/material.dart';
import 'app.dart';

import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true); // TODO doesnt work

    return MaterialApp(
      title: 'My Flutter App',
      home: App(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 28, 30, 40),
        fontFamily: 'AlegreyaSans',
      ),
    );
  }
}
