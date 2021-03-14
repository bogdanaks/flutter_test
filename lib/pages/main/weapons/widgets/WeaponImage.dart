

import 'package:flutter/material.dart';

class WeaponImage extends StatelessWidget {
  final String imageName;

  WeaponImage(this.imageName);

  @override
  Widget build(BuildContext context) {
    return (
      Container(
        height: 150,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Color.fromARGB(40, 125, 124, 124),
          image: DecorationImage(
            image: AssetImage("$imageName"),
            fit: BoxFit.contain,
            alignment: Alignment.center
          ),
        ),
      )
    );
  }
}