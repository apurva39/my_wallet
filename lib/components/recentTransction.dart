import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_wallet/themeStyle/themeStyle.dart';

import '../widgets/transactionCard.dart';

class RecentTransaction extends StatefulWidget {
  const RecentTransaction({Key? key}) : super(key: key);

  @override
  State<RecentTransaction> createState() => _RecentTransactionState();
}

class _RecentTransactionState extends State<RecentTransaction> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:
    Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0,
              right: 15.0,
              top: 16,
              bottom: 32,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transaction',style: ThemeStyles.primaryTitle,),
                Text('See All',style: ThemeStyles.seeAll,)
              ],
            ),
          ),
          Flexible(
              flex: 1,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  TransactionCard(

                    color: Colors.green.shade600, letter: 'A',title: 'Received from Apurva',subTitle: '30 Jun, 11:05 PM',price: '+3900.00', ReceivedMoneyColor: Colors.green,
                  ),
                  TransactionCard(
                    color: Colors.lightBlue, letter: 'C',title: 'Paid to Chiku',subTitle: 'Yesterday, 1:05 PM',price: '-900.00',ReceivedMoneyColor: Colors.red,
                  ),
                  TransactionCard(
                    color: ThemeColors.black, letter: 'AD',title: 'Received from Anand',subTitle: 'Today, 12:05 PM',price: '+2200.00',ReceivedMoneyColor: Colors.green,
                  ),
                  TransactionCard(
                    color: ThemeColors.grey, letter: 'C',title: 'Received from Cinda ',subTitle: '07 Jun, 08:34 PM',price: '+3900',ReceivedMoneyColor: Colors.green,
                  ),
                  TransactionCard(

                    color: Colors.green.shade600, letter: 'A',title: 'Received from Anand',subTitle: '30 Jun, 11:05 PM',price: '+3900.00', ReceivedMoneyColor: Colors.green,
                  ),
                  TransactionCard(
                    color: Colors.greenAccent, letter: 'D',title: 'Paid to Deepak',subTitle: '05 July, 1:05 PM',price: '-700.00',ReceivedMoneyColor: Colors.red,
                  ),
                  TransactionCard(
                    color: ThemeColors.black, letter: 'F',title: 'Received from Faran',subTitle: '04 July, 12:05 PM',price: '+240.00',ReceivedMoneyColor: Colors.green,
                  ),
                  TransactionCard(
                    color: Colors.greenAccent, letter: 'C',title: 'Received from Chiku ',subTitle: '04 July, 08:34 PM',price: '+4900',ReceivedMoneyColor: Colors.green,
                  ),
                  TransactionCard(
                    color: Colors.lightBlue, letter: 'B',title: 'Paid to Baber',subTitle: '03 July, 1:05 PM',price: '-80.00',ReceivedMoneyColor: Colors.red,
                  ),
                  TransactionCard(
                    color: Colors.blueAccent, letter: 'A',title: 'Paid to Anmol',subTitle: '03, 1:05 PM',price: '+340.00',ReceivedMoneyColor: Colors.red,
                  ),
                  TransactionCard(
                    color: ThemeColors.black, letter: 'F',title: 'Received from Fateh',subTitle: '03 July, 12:05 PM',price: '+2200.00',ReceivedMoneyColor: Colors.green,
                  ),
                  TransactionCard(
                    color: ThemeColors.grey, letter: 'A',title: 'Send to Apurva ',subTitle: '03 Jun, 08:34 PM',price: '+8700',ReceivedMoneyColor: Colors.red,
                  ),

                  TransactionCard(
                    color: ThemeColors.black, letter: 'Ap',title: 'Received from Apu',subTitle: '01, 12:05 PM',price: '+2200.00',ReceivedMoneyColor: Colors.green,
                  ),
                  TransactionCard(
                    color: ThemeColors.grey, letter: 'CK',title: 'Received from Chiku ',subTitle: '01 Jun, 08:34 PM',price: '+3900',ReceivedMoneyColor: Colors.green,
                  ),
                ],
              )),
        ],
      ),
    )
    );
  }
}
