import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/appBar.dart';
import '../components/cards.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        child: Column(
          children: [

            Appbar(
                title: 'Your Cards'
                ),


            CardsList(),

          ],
        ),
      ),
    );
  }
}
