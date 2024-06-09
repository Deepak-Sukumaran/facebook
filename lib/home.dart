// ignore_for_file: prefer_const_constructors
import 'package:facebook/Widgets/CircularButton.dart';

import 'package:facebook/functions/CustomDivider.dart';
import 'package:facebook/sections/RoomSection.dart';
import 'package:facebook/sections/StorySection.dart';
import 'package:facebook/sections/headerButtonsSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 28),
        ),
        actions: [
          //custom buttons
          CircularButton(
              buttonAction: () {
                print("go to search page");
              },
              buttonIcon: Icons.search_outlined,),
          CircularButton(
              buttonAction: () {
                print("go to message page");
              },
              buttonIcon: Icons.message_outlined)
        ],
      ),
      body: ListView(
        // Status Section
        children: [StatusSection(),
        // divider
        customDivider(1),
        HeaderButtonsSection(),
        customDivider(9),
        RoomSection(),
        customDivider(9),
        StorySection(),
        customDivider(9)
        ],
      ),
    );
  }
}
