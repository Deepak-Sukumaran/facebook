// ignore_for_file: prefer_const_constructors

import 'package:facebook/Widgets/appBarButton.dart';
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
          AppBarButton(buttonAction: () {print("go to search page");}, buttonIcon: Icons.search_outlined),
          AppBarButton(buttonAction: () {print("go to message page");}, buttonIcon: Icons.message_outlined)
        ],
      ),
    );
  }
}