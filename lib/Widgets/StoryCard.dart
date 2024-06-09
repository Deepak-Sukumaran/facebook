// ignore_for_file: avoid_print

import 'package:facebook/Widgets/Avatar.dart';
import 'package:facebook/Widgets/CircularButton.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String storyavatar;
  final bool? createStoryStatus;
  final bool? displayBorder;

  StoryCard(
      {required this.labelText,
      required this.story,
      required this.storyavatar,
      this.createStoryStatus = false,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover)),
      child: Stack(
        children: [
          createStoryStatus == true
              ? CircularButton(
                  buttonColor: Colors.white.withOpacity(0.45),
                  buttonAction: () {
                    print("story add button clicked");
                  },
                  buttonIcon: Icons.add,
                  buttonIconColor: Colors.blue,
                )
              : Avatar(
                  imagename: storyavatar,
                  displayStatus: false,
                  displayBorder: displayBorder,
                ),
          Positioned(
              bottom: 7,
              left: 10,
              child: Text(
                labelText ?? "N/A",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }
}
