import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:expandable_search_bar/expandable_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/searchCard.dart';

class Appbar extends StatefulWidget {


  final String title;
  // final String subTitle;
  // final String price;
  // final String letter;
  // final Color color;
  Appbar({
    // required this.color,
    // required this.letter,
    // required this.price,
    // required this.subTitle,
    required this.title,

  });



  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  TextEditingController textController = TextEditingController();
  final TextEditingController? searchController
  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 8.0),
      child: Row(


        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SearchCard(),
              // ExpandableSearchBar(
              //   backgroundColor: Colors.white54,
              //   width: 100,
              //   onTap: () {
              //     print(
              //       searchController!.text.toString(),
              //     );
              //   },
              //   hintText: "search something",
              //   editTextController: searchController,
              // ),


              // IconButton(
              //   icon: SvgPicture.asset('assets/more-icon.svg'),
              //   onPressed: null,
              // )
            ],
          )
        ],
      ),
    );
  }
}