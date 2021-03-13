import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String tabTitle;

  TabButton({ @required this.tabTitle });

  @override
  Widget build(BuildContext context) {
    return (
      Tab(
        child: Text(
          '$tabTitle',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 220, 221, 222),
          ),
        ),
      )
    );
  }
}
