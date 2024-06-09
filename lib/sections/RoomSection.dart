// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.amberAccent,
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(8),
            children: [
              // elevatedButton
             createRoomButton()
            ]));
  }
}

///created room button
Widget createRoomButton(){
  return  ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 10, foregroundColor: Colors.blue),
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
              );
}
