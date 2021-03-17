import 'package:flutter/material.dart';

import '../widgets/WeaponDescription.dart';
import '../widgets/WeaponStats.dart';

class FullInfoView extends StatelessWidget {
  final Map weapon;

  FullInfoView({@required this.weapon});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        WeaponDescription(
          description: weapon['description'],
        ),
        Container(
          child: WeaponStats(
            weapon: weapon,
          ),
          margin: EdgeInsets.symmetric(vertical: 10),
        )
      ],
    );
  }
}
