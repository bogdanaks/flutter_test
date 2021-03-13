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
      child: Material(
        color: Color.fromARGB(255, 42, 43, 55),
        borderRadius: BorderRadius.circular(7.0),
        child: InkWell(
          onTap: () {
            switch ('$categoryName') {
              case 'Weapons':
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeaponPage()),
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
          borderRadius: BorderRadius.circular(7.0),
          highlightColor: Color.fromARGB(255, 60, 61, 77),
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: CategoryImage(categoryImage),
                ),
                Expanded(
                  flex: 4,
                  child: CategoryName(categoryName),
                ),
              ],
            ),
            height: 130,
          ),
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
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7.0), bottomLeft: Radius.circular(7.0)),
        image: DecorationImage(
          image: AssetImage("$categoryImage"),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}

class CategoryName extends StatelessWidget {
  final String categoryName;

  CategoryName(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return (Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Text('$categoryName',
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 220, 221, 222),
                  fontWeight: FontWeight.w700,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ])),
        )));
  }
}
