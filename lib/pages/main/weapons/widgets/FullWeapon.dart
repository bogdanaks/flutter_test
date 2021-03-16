import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

import 'package:my_app/pages/main/weapons/widgets/WeaponImage.dart';
import './WeaponTitle.dart';
import './TabButton.dart';

class FullWeapon extends StatelessWidget {
  final Map weapon;

  FullWeapon({@required this.weapon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            weapon['title'],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          backgroundColor: Color.fromARGB(255, 42, 43, 55),
        ),
        body: ListView(children: [
          Container(
              child: Center(
                  child: Stack(
            children: <Widget>[
              WeaponImage(weapon['image']),
              WeaponTitle(title: weapon['title'], type: weapon['type'])
            ],
          ))),
          DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Color.fromARGB(255, 125, 124, 124),
                      indicator: BubbleTabIndicator(
                        indicatorHeight: 25.0,
                        indicatorColor: Color.fromARGB(255, 220, 221, 222),
                        tabBarIndicatorSize: TabBarIndicatorSize.tab,
                        indicatorRadius: 1,
                      ),
                      tabs: [TabInFull('INFO'), TabInFull('LOADOUTS')]),
                  Container(
                      //fix it size
                      height: 500.0,
                      child: TabBarView(
                        children: [
                          TabViewInfo(weapon: weapon),
                          Center(child: Text('LOADOUTS')),
                        ],
                      ))
                ],
              ))
        ]));
  }
}

class TabInFull extends StatelessWidget {
  final String tabTitle;

  TabInFull(this.tabTitle);

  @override
  Widget build(BuildContext context) {
    return (Tab(
      child: Text(
        '$tabTitle',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
      ),
    ));
  }
}

class TabViewInfo extends StatelessWidget {
  final Map weapon;

  TabViewInfo({@required this.weapon});

  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            weapon['description'],
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 125, 124, 124)),
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: WeaponStats(
            weapon: weapon,
          ),
        ),
      ],
    ));
  }
}

class WeaponStats extends StatelessWidget {
  final Map weapon;

  WeaponStats({@required this.weapon});

  @override
  Widget build(BuildContext context) {
    Map _weaponStats = weapon['stats'];
    print(_weaponStats);
    return Expanded(
      flex: 1,
      // margin: EdgeInsets.only(top: 10),
      child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(4),
            1: FlexColumnWidth(8),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: _weaponStats.entries
              .map((stat) => (TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 42, 43, 55),
                      ),
                      children: [
                        Text(stat.key.toString()),
                        Text(stat.value.toString())
                      ])))
              .toList()),
    );
  }
}
