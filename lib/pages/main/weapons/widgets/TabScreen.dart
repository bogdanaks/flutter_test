import 'package:flutter/material.dart';

import 'package:my_app/data/weapons.dart';
import 'package:my_app/pages/main/weapons/widgets/WeaponImage.dart';

class TabScreen extends StatelessWidget {
  final List weapons;
  final String type;

  TabScreen({ @required this.weapons, @required this.type });

  @override
  Widget build(BuildContext context) {
    return (
      ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: weapons.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return WeaponImage(WeaponsData['$type'][index]['image']);
        },
      )
    );
  }
}
