import 'package:flutter/material.dart';

class WeaponImage extends StatelessWidget {
  final String imageName;

  WeaponImage(this.imageName);

  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("$imageName"),
            fit: BoxFit.contain,
            alignment: Alignment.center),
      ),
    ));
  }
}
