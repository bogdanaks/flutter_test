import 'package:flutter/material.dart';

class VehicleImage extends StatelessWidget {
  final String imageName;

  VehicleImage(this.imageName);

  @override
  Widget build(BuildContext context) {
    return (
      Container(
        height: 150,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          image: DecorationImage(
            image: AssetImage("$imageName"),
            fit: BoxFit.cover,
          ),
        ),
      )
    );
  }
}