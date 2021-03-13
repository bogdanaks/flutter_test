import 'package:flutter/material.dart';
import 'package:my_app/data/weapons.dart';

import './widgets/TabButton.dart';
import './widgets/TabScreen.dart';

class WeaponPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (
      DefaultTabController(
        length: 10,
        child: Scaffold(
        appBar: AppBar(
          title: Text('Weapons'),
          backgroundColor: Color.fromARGB(255, 42, 43, 55),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Color.fromARGB(255, 220, 221, 222),
            indicatorWeight: 3,
            tabs: [
              TabButton(tabTitle: 'ASSAULT RIFLES'),
              TabButton(tabTitle: 'SMGS'),
              TabButton(tabTitle: 'TACTICAL RIFLES'),
              TabButton(tabTitle: 'SHOTGUNS'),
              TabButton(tabTitle: 'LMGS'),
              TabButton(tabTitle: 'MARKSMAN RIFLES'),
              TabButton(tabTitle: 'SNIPER RIFLES'),
              TabButton(tabTitle: 'HANDGUNS'),
              TabButton(tabTitle: 'LAUNCHERS'),
              TabButton(tabTitle: 'MELEE'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabScreen(weapons: WeaponsData['ASSAULT_RIFLES'], type: 'ASSAULT_RIFLES'),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        )
      ),
      )
    );
  }
}
