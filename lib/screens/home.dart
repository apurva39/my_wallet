
import 'package:flutter/material.dart';

import '../components/appBar.dart';
import '../components/cards.dart';

import '../components/recentTransction.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [

            Appbar(),
            CardsList(),
            RecentTransaction(),
          ],
        ),
      ),
    );
  }


}
