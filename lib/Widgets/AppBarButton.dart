// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final void Function()? buttonAction;
  final IconData? buttonIcon;
  AppBarButton({required this.buttonAction, required this.buttonIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[350]),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: Colors.black,
        ),
        iconSize: 33,
      ),
    );
  }
}
