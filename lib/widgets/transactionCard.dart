
import 'package:flutter/material.dart';

import '../themeStyle/themeStyle.dart';

class TransactionCard extends StatefulWidget {
  final Color ReceivedMoneyColor;
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;
  TransactionCard({
    required this.color,
    required this.letter,
    required this.price,
    required this.subTitle,
    required this.title,
    required this.ReceivedMoneyColor,
  });
  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      // padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Container(
        height: 62.0,
        width: 280.0,
        decoration: BoxDecoration(
          // color: Colors.white12,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey,
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 44.0,
                        width: 44.0,
                        decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Center(
                          child: Text(
                            widget.letter,
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title,
                              style: ThemeStyles.otherDetailsPrimary),
                          Text(widget.subTitle,
                              style: ThemeStyles.otherDetailsSecondary),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(widget.price, style: TextStyle(color: widget.ReceivedMoneyColor)),
                      SizedBox(width: 4.0),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  )
                ],
              ),
            ),
            // Divider(
            //   color: Colors.grey.withOpacity(0.5),
            //   thickness: 0.5,
            //   endIndent: 16.0,
            //   indent: 16.0,
            // )
          ],
        ),
      ),
    );
  }
}
