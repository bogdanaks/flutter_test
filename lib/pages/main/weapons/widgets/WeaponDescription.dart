import 'package:flutter/material.dart';

class WeaponDescription extends StatelessWidget {
  final String description;

  WeaponDescription({@required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$description',
      style: TextStyle(color: Color.fromARGB(255, 220, 221, 222), fontSize: 18),
    );
  }
}
