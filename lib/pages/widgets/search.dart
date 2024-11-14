import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart'; 

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 100,
      
      child: Stack(
        
        children: [
        AnimSearchBar(
        width: MediaQuery.of(context).size.width,
        textController: textController,
        onSuffixTap: () {
          setState(() {
            textController.clear();
          });
        },
        onSubmitted: (st){}, 
      ), 
         
        ],
      ),
    );
  }
}