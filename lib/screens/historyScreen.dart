import 'package:flutter/cupertino.dart';
import 'package:my_wallet/themeStyle/themeStyle.dart';
import 'package:my_wallet/widgets/searchCard.dart';

import '../components/appBar.dart';
import '../components/recentTransction.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [

            Appbar(title: 'History'),
            // SearchCard(),
            RecentTransaction(),
          ],
        ),
      ),
    );

  }
}
