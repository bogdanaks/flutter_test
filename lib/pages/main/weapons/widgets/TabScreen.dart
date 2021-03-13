import 'package:flutter/material.dart';

import 'package:my_app/data/weapons.dart';

class TabScreen extends StatelessWidget {
  final List weapons;
  final String type;

  TabScreen({ @required this.weapons, @required this.type });

  @override
  Widget build(BuildContext context) {
    return (
      ListView.separated(
        itemCount: weapons.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(WeaponsData['$type'][index]['title'], style: TextStyle(color: Colors.white, fontSize: 23),),
          );
        },
      )
    );
  }
}