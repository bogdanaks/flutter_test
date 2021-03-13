import 'package:flutter/material.dart';

class VehicleInfo extends StatelessWidget {
  final String title;
  final String description;
  final String speed;

  VehicleInfo(this.title, this.description, this.speed);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildTitle(title),
          _buildDescription(description),
          _buildCharacteristic(speed)
        ],
      ),
    );
  }

  Widget _buildTitle(title) => Container(
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(
                  color: Color.fromARGB(255, 220, 221, 222), width: 3))),
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child: Text(
          '$title',
          style: TextStyle(
              color: Color.fromARGB(255, 220, 221, 222),
              fontWeight: FontWeight.w700,
              fontSize: 26),
        ),
      ));

  Widget _buildDescription(description) => Container(
        margin: EdgeInsets.only(top: 10),
        child: Text('$description',
            style: TextStyle(
                color: Color.fromARGB(255, 220, 221, 222),
                fontWeight: FontWeight.w500,
                fontSize: 16)),
      );

  Widget _buildCharacteristic(speed) => Container(
        margin: EdgeInsets.only(top: 10),
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(4),
            1: FlexColumnWidth(8),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 42, 43, 55),
              ),
              children: [
                Container(
                  height: 64,
                  child: Center(
                    child: Text(
                      'Speed',
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 221, 222),
                          fontSize: 20),
                    ),
                  ),
                ),
                Container(
                    height: 64,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '$speed',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 220, 221, 222),
                            fontSize: 20),
                      ),
                    )),
              ],
            ),
          ],
        ),
      );
}
