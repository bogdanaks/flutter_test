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
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          image: DecorationImage(
            image: AssetImage("$imageName"),
            fit: BoxFit.cover,
          ),
        ),
      )
    );
  }
}