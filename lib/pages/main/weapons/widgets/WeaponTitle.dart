import 'package:flutter/material.dart';

import 'package:my_app/data/weapons.dart';

class WeaponTitle extends StatelessWidget {
  final String title;
  final String type;

  WeaponTitle({@required this.title, @required this.type});

  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              height: 30,
              child: Text(
                '$title',
                style: TextStyle(
                    color: Color.fromARGB(255, 125, 124, 124),
                    fontWeight: FontWeight.w700,
                    fontSize: 23),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(WeaponsType[type]), fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
      // child: Flex(
      //   direction: Axis.horizontal,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   mainAxisSize: MainAxisSize.max,
      //   verticalDirection: VerticalDirection.down,
      //   children: [
      //     Text(
      //       '$title',
      //       style: TextStyle(
      //           color: Color.fromARGB(255, 125, 124, 124),
      //           fontWeight: FontWeight.w700,
      //           fontSize: 23),
      //     ),
      //     Container(
      //       width: 30,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //             image: AssetImage(WeaponsType[type]),
      //             fit: BoxFit.contain,
      //             alignment: Alignment.center),
      //       ),
      //     )
      //   ],
      // ),

      // Row(
      //   children: [
      //     Expanded(
      //       flex: 6,
      //       child: Text(
      //         '$title',
      //         style: TextStyle(
      //             color: Color.fromARGB(255, 125, 124, 124),
      //             fontWeight: FontWeight.w700,
      //             fontSize: 23),
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 30,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //               image: AssetImage(WeaponsType[type]),
      //               fit: BoxFit.contain,
      //               alignment: Alignment.center),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    ));
  }
}
