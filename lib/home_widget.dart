import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_wallet/screens/cardScreen.dart';
import 'package:my_wallet/screens/historyScreen.dart';
import 'package:my_wallet/screens/home.dart';
import 'package:my_wallet/screens/profileScreen.dart';
import 'package:my_wallet/screens/settings.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

// Used for Bottom Navigation Bar

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      HistoryScreen(),
      SettingsScreen(),
      HomeScreen(),
      CardScreen(),
      ProfileScreen(),

    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(

        height: 55,
        // animationCurve: Curves.,
        backgroundColor: Colors.white,
        color: Colors.greenAccent,
        onTap: onTabTapped,
        index: selectedIndex,
          items: [

            Icon(Icons.history,size: 30),
            Icon(Icons.settings,size: 30,),
            Icon(Icons.home,size: 30),
            Icon(Icons.credit_card,size: 30),
            Icon(Icons.account_circle_outlined,size: 30),


        ],

      ),
    );
  }
}