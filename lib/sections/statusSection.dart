import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          davidBeckham,
          fit: BoxFit.contain,
        ),
      ),
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
