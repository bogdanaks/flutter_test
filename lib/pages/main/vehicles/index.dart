import 'package:flutter/material.dart';
import './widgets/vehicleImage.dart';
import './widgets/vehicleInfo.dart';

import '../../../data/vehicles.dart';

class VehiclesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Vehicles'),
        backgroundColor: Color.fromARGB(255, 42, 43, 55),
      ),
      body: Center(
          child: Container(
        child: Center(
          child: _buildListVehciles(),
        ),
      )),
    ));
  }

  Widget _buildListVehciles() {
    return (ListView(
      children: <Widget>[
        Vehicle(VehiclesData['atv']),
        Vehicle(VehiclesData['rover']),
        Vehicle(VehiclesData['suv']),
        Vehicle(VehiclesData['truck']),
        Vehicle(VehiclesData['helicopter']),
      ],
    ));
  }
}

class Vehicle extends StatelessWidget {
  final Map vehicle;

  Vehicle(this.vehicle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          VehicleImage(vehicle['image']),
          VehicleInfo(vehicle['title'], vehicle['description'], vehicle['speed']),
        ],
      ),
    );
  }
}
