import 'package:flutter/material.dart';

class WeaponStats extends StatelessWidget {
  final Map weapon;

  WeaponStats({@required this.weapon});

  @override
  Widget build(BuildContext context) {
    final rows = <TableRow>[];
    weapon['stats'].forEach((key, value) => {
          rows.add(TableRow(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 42, 43, 55),
            ),
            children: [
              Container(
                height: 35,
                child: Center(
                  child: Text(
                    '$key',
                    style: TextStyle(
                        color: Color.fromARGB(255, 220, 221, 222),
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                  height: 35,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '$value',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 221, 222),
                          fontSize: 20),
                    ),
                  )),
            ],
          ))
        });

    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FlexColumnWidth(4),
        1: FlexColumnWidth(2),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: rows,
    );
  }
}
