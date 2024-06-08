// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:facebook/functions/CustomDivider.dart';
import 'package:facebook/functions/customVerticalDvider.dart';
import 'package:flutter/material.dart';

class HeaderButtonsSection extends StatelessWidget {
//  headerButton
  Widget headerButton(IconData headerIcon, Color headerButtonColor,
      String headerButtonText, void Function()? headerButtonAction) {
    return TextButton.icon(
        onPressed: headerButtonAction,
        icon: Icon(
          headerIcon,
          color: headerButtonColor,
        ),
        label: Text(
          headerButtonText,
          style: TextStyle(color: Colors.black54),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              headerButton(Icons.video_call, Colors.redAccent, "Live", () {
                print("live button clicked");
              }),
              customVerticalDivider(),
              headerButton(Icons.photo_library, Colors.green,
                  "Photos", () {print("Photo button clicked");}),
                  customVerticalDivider(),
                  headerButton(Icons.podcasts,Colors.blue, "Room", (){print("Room button clicked");}),
                  
            ],
          )),
    );
  }
}
