import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:farm/NavDrawer.dart';
import 'package:farm/Home.dart';
import 'package:farm/Buy.dart';
import 'package:farm/Sell.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreenPage(),
    );
  }
}

class MainScreenPage extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<MainScreenPage> {
  int selectedIndex = 1;
  List<Widget> _widgetOptions = <Widget>[BuyPage(), HomePage(), SellPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text("KISAN SEVA"),
        backgroundColor: Colors.green[500],
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.shopping_cart,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.green[300],
        items: <Widget>[
          Text(
            "BUY",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.home,
            size: 30,
          ),
          Text(
            "SELL",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
        index: 1,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
