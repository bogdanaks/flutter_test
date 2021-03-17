import 'package:flutter/material.dart';

import './WeaponImage.dart';

class CardLodout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var image = 'lib/assets/images/weapons/smgs/aug.webp';
    // var title = 'Recrent AUG';
    // var type = 'MW';
    return Card(
      color: Color.fromARGB(255, 42, 43, 55),
      child: InkWell(
        splashColor: Color.fromARGB(255, 42, 43, 55),
        highlightColor: Colors.grey.withAlpha(20),
        onTap: () {
          print('Card tapped.');
        },
        // child: Text('123')
        child: Column(
          children: [WeaponImage(image), CardLoadoutTitle()],
        ),
      ),
    );
  }
}

class CardLoadoutTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CardDivider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recrent AUG',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Like(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 0.2,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
    ));
  }
}

class Like extends StatefulWidget {
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleFavorite,
      child: _isFavorited
          ? Icon(Icons.favorite_outlined, color: Colors.red[500])
          : Icon(Icons.favorite_border_outlined,
              color: Color.fromARGB(255, 125, 124, 124)),
    );
  }

  _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}
