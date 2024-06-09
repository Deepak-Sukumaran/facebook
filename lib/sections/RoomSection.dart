// ignore_for_file: prefer_const_constructors

import 'package:facebook/Widgets/Avatar.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // color: Colors.amberAccent,
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          // elevatedButton
          createRoomButton(),
         
          Avatar(imagename: bradPit, displayStatus: true),
          Avatar(imagename: tomCruise, displayStatus: true),
          Avatar(imagename: tomHardy, displayStatus: true),
          Avatar(imagename: alexandraDaddrio, displayStatus: true),
          Avatar(imagename: davidBeckham, displayStatus: true),
          Avatar(imagename: cilliaMurphy, displayStatus: true),
          Avatar(imagename: vanessa, displayStatus: true),
          Avatar(imagename:superdry, displayStatus: true),
        ]));
  }
}

///created room button
Widget createRoomButton() {
  return Padding(
    padding: const EdgeInsets.only(bottom:5,left: 5),
    child: ElevatedButton.icon(
      style:
          ElevatedButton.styleFrom(elevation: 10, foregroundColor: Colors.blue),
      onPressed: () {
        print("create room button clicked");
      },
      label: Text(
        "Create \n Room",
        style: TextStyle(color: Colors.blue),
      ),
      icon: Icon(
        Icons.podcasts,
        color: Colors.purple,
      ),
    ),
  );
}
