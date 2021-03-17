import 'package:flutter/material.dart';

import '../widgets/CardLoadout.dart';

class FullLoadouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        CardLodout(),
        CardLodout(),
        CardLodout(),
        CardLodout(),
      ],
    );
  }
}
