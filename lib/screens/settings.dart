import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_wallet/components/appBar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [

            Appbar(title: 'Settings'),
            Container(

            ),
          ],
        ),
      ),
    );


  }
}
