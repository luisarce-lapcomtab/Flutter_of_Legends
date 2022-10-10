import 'package:flutter/material.dart';
import 'package:flutter_of_legends/page/home_page.dart';
import 'package:flutter_of_legends/page/market_page.dart';
import 'package:flutter_of_legends/page/my_lands.dart';
import 'package:flutter_of_legends/widgets/widgets.dart';

// ignore_for_file: prefer_const_constructors

class MyMainPageState extends StatefulWidget {
  const MyMainPageState({super.key});

  @override
  State<MyMainPageState> createState() => _MyMainPageStateState();
}

class _MyMainPageStateState extends State<MyMainPageState> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int index = 0;
  final screen = [
    MyHomePage(),
    MarketPage(),
    LandsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _newAppBar(_scaffoldKey),
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      body: screen[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.blue,
            labelTextStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ))),
        child: NavigationBar(
          height: 65,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          animationDuration: Duration(seconds: 2),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopify_outlined),
              selectedIcon: Icon(Icons.shopify),
              label: 'Market',
            ),
            NavigationDestination(
              icon: Icon(Icons.landslide_outlined),
              selectedIcon: Icon(Icons.landslide),
              label: 'My Land',
            ),
          ],
        ),
      ),
    );
  }

  _newAppBar(scaffoldKey) {
    return AppBar(
      elevation: 2,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: MyAppBar(scaffoldKey: scaffoldKey)),
    );
  }
}
