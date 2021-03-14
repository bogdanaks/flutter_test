import 'package:flutter/material.dart';
import 'loadouts/index.dart';
import 'vehicles/index.dart';
import 'weapons/index.dart';
import 'map/index.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Categories(),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: <Widget>[
        Category(
            categoryName: 'Weapons',
            categoryImage: 'lib/assets/images/weapons.jpg'),
        Category(
            categoryName: 'Map', categoryImage: 'lib/assets/images/map.webp'),
        Category(
            categoryName: 'Loadouts',
            categoryImage: 'lib/assets/images/loadout.jpg'),
        Category(
            categoryName: 'Vehicles',
            categoryImage: 'lib/assets/images/vehicles.jpg'),
      ],
    ));
  }
}

class Category extends StatelessWidget {
  Category({@required this.categoryName, @required this.categoryImage});

  final String categoryName;
  final String categoryImage;
  @override
  Widget build(BuildContext context) {
    return (Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
        child: InkWell(
          onTap: () {
            switch ('$categoryName') {
              case 'Weapons':
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeaponsPage()),
                  );
                }
                break;
              case 'Map':
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapPage()),
                  );
                }
                break;
              case 'Loadouts':
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoadoutsPage()),
                  );
                }
                break;
              case 'Vehicles':
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VehiclesPage()),
                  );
                }
                break;
            }
          },
          highlightColor: Color.fromARGB(255, 60, 61, 77),
          child: Stack(
              children: <Widget>[
                  CategoryImage(categoryImage),
                  CategoryGradient(),
                  CategoryName(categoryName),
              ]
          ),
        ),
      margin: EdgeInsets.all(15.0),
    ));
  }
}

class CategoryImage extends StatelessWidget {
  final String categoryImage;

  CategoryImage(this.categoryImage);

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage("$categoryImage"),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}

class CategoryGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (
      Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 150,
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: <Color>[
            Colors.black.withAlpha(240),
            Colors.black.withAlpha(220),
            Colors.black.withAlpha(0),
            Colors.black.withAlpha(0),
            Colors.black.withAlpha(0),
          ],
        ),
      ),
      )
    );
  }
}

class CategoryName extends StatelessWidget {
  final String categoryName;

  CategoryName(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 150,
      padding: EdgeInsets.only(bottom: 5, left: 15),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text('$categoryName',
            textScaleFactor: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 125, 124, 124),
              fontWeight: FontWeight.w700,
            )
        ),
      )
    ));
  }
}
