import 'package:flutter/material.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart'
    as extend;
import 'package:my_app/pages/main/weapons/views/FullLoadouts.dart';

import 'package:my_app/pages/main/weapons/widgets/WeaponImage.dart';
import '../widgets/TabButton.dart';
import 'FullInfoView.dart';

class FullWeapon extends StatefulWidget {
  final Map weapon;

  FullWeapon({@required this.weapon});

  @override
  _FullWeaponState createState() => _FullWeaponState();
}

class _FullWeaponState extends State<FullWeapon> with TickerProviderStateMixin {
  TabController primaryTC;

  @override
  void initState() {
    primaryTC = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
//var tabBarHeight = primaryTabBar.preferredSize.height;
    var pinnedHeaderHeight =
//statusBar height
        statusBarHeight +
            //pinned SliverAppBar height in header
            kToolbarHeight;
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: extend.NestedScrollView(
          headerSliverBuilder: (c, f) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: 150,
                backgroundColor: Color.fromARGB(255, 42, 43, 55),
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(widget.weapon['title'],
                        style: TextStyle(
                            color: Color.fromARGB(255, 125, 124, 124),
                            fontWeight: FontWeight.w700,
                            fontSize: 23)),
                    background: WeaponImage(widget.weapon['image'])),
              ),
            ];
          },
          pinnedHeaderSliverHeightBuilder: () {
            return pinnedHeaderHeight;
          },
          body: Column(
            children: <Widget>[
              TabBar(
                controller: primaryTC,
                labelColor: Color.fromARGB(255, 220, 221, 222),
                unselectedLabelColor: Color.fromARGB(255, 125, 124, 124),
                indicatorColor: Color.fromARGB(255, 220, 221, 222),
                tabs: [
                  TabButton(tabTitle: 'INFO'),
                  TabButton(tabTitle: 'LOADOUTS'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: primaryTC,
                  children: <Widget>[
                    FullInfoView(
                      weapon: widget.weapon,
                    ),
                    FullLoadouts(),
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
