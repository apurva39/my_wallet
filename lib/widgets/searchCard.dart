import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatefulWidget {

  const SearchCard({super.key});

  @override
  State<SearchCard> createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          margin: EdgeInsets.all(2),
          alignment: Alignment.center,
          foregroundDecoration: BoxDecoration(

            shape: BoxShape.circle,

          ),
          child: AnimSearchBar(
              width: 180,
              textController: textController,
              onSuffixTap:(){
                setState(() {
                  textController.clear();
                });
              },
            onSubmitted: (String ) {  },

          ),
        ));
  }
}
