import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_wallet/screens/home.dart';

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
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.grey,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   elevation: 0,
      //   onTap: onTabTapped,
      //   currentIndex: selectedIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/home-icon.svg'),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //
      //       icon: SvgPicture.asset('assets/transactions-icon.svg'),
      //       label: 'Transactions',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/settings-icon.svg'),
      //       label: 'Settings',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/smiley-icon.svg'),
      //       label: 'Account',
      //     ),
      //   ],
      // ),
      bottomNavigationBar: CurvedNavigationBar(

        height: 49,
        // animationCurve: Curves.,
        backgroundColor: Colors.white,
        color: Colors.greenAccent,
        onTap: onTabTapped,
        index: selectedIndex,
          items: [

            Icon(Icons.home,size: 30),
            Icon(Icons.history,size: 30),
            Icon(Icons.settings,size: 30,),
            Icon(Icons.account_circle_outlined),


        ],

      ),
    );
  }
}