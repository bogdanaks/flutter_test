import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        backgroundColor: Color.fromARGB(255, 42, 43, 55),
      ),
      body: Container(
          child: PhotoView(
            basePosition: Alignment.center,
            imageProvider: AssetImage("lib/assets/images/map/map-overview.png"),
          )
        ),
      )
    );
  }
}
