import 'package:flutter/material.dart';

import 'package:my_app/data/weapons.dart';
import 'package:my_app/pages/main/weapons/widgets/WeaponImage.dart';
import './WeaponTitle.dart';
import './FullWeapon.dart';

class TabScreen extends StatelessWidget {
  final List weapons;
  final String type;

  TabScreen({@required this.weapons, @required this.type});

  @override
  Widget build(BuildContext context) {
    return (ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      itemCount: weapons.length,
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemBuilder: (BuildContext context, int index) {
        return (Container(
          height: 150,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Color.fromARGB(40, 125, 124, 124),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ]
          ),
          child: InkWell(
            highlightColor: Color.fromARGB(255, 60, 61, 77),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FullWeapon(weapon: WeaponsData['$type'][index])),
              );
            },
            child: Stack(
            children: <Widget>[
              WeaponImage(WeaponsData['$type'][index]['image']),
              WeaponTitle(
                  title: WeaponsData['$type'][index]['title'],
                  type: WeaponsData['$type'][index]['type'])
              ],
            ),
          )
        ));
      },
    ));
  }
}
