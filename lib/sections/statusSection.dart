import 'package:facebook/Widgets/Avatar.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(kyleJenner),
      //  CircleAvatar( backgroundImage: AssetImage(davidBeckham),radius: 32,backgroundColor: Colors.transparent,)
      title: TextField(
        decoration: InputDecoration(
            hintText: "What is on your mind ?",
            hintStyle: TextStyle(color: Colors.grey[505]),
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            enabledBorder: InputBorder.none),
      ),
    );
  }
}
