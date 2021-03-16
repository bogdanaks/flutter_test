import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

import 'package:my_app/data/weapons.dart';

import './widgets/TabButton.dart';
import './widgets/TabScreen.dart';

class WeaponsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (DefaultTabController(
      length: 10,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Weapons'),
            backgroundColor: Color.fromARGB(255, 42, 43, 55),
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Color.fromARGB(255, 125, 124, 124),
              indicator: BubbleTabIndicator(
                indicatorHeight: 25.0,
                indicatorColor: Color.fromARGB(255, 220, 221, 222),
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
                indicatorRadius: 1,
              ),
              tabs: [
                TabButton(tabTitle: 'ASSAULT RIFLES'),
                TabButton(tabTitle: 'SMGS'),
                TabButton(tabTitle: 'SHOTGUNS'),
                TabButton(tabTitle: 'LMGS'),
                TabButton(tabTitle: 'TACTICAL RIFLES'),
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
              TabScreen(
                  weapons: WeaponsData['ASSAULT_RIFLES'],
                  type: 'ASSAULT_RIFLES'),
              TabScreen(
                  weapons: WeaponsData['SMGS'],
                  type: 'SMGS'),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          )),
    ));
  }
}
