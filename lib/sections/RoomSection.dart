import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
 

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
              
              ElevatedButton.icon(style: ElevatedButton.styleFrom(elevation: 5),
                onPressed: () {},
                label: Text(
                  "Create Room",
                  style: TextStyle(color: Colors.blue),
                ),
                icon: Icon(
                  Icons.podcasts,
                  color: Colors.purple,
                ),
              )
            ]));
  }
}
