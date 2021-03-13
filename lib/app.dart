import 'package:flutter/material.dart';
import 'pages/main/index.dart';
import 'pages/highlights/index.dart';
import 'pages/profile/index.dart';
import 'pages/news/index.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MainPage(),
    HighlightsPage(),
    NewsPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.games_outlined),
            backgroundColor: Color.fromARGB(255, 28, 30, 40),
            label: 'Main',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.ondemand_video_outlined),
            backgroundColor: Color.fromARGB(255, 28, 30, 40),
            label: 'Highlights',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.menu_book),
            backgroundColor: Color.fromARGB(255, 28, 30, 40),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Color.fromARGB(255, 28, 30, 40),
            label: 'Profile',
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
