// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final void Function()? buttonAction;
  final IconData? buttonIcon;
  Color? buttonIconColor;
  Color? buttonColor;
  CircularButton(
      {required this.buttonAction,
      required this.buttonIcon,
      this.buttonIconColor = Colors.black,this.buttonColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color:buttonColor ?? Colors.grey[350]),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: buttonIconColor 
          // ?? Colors.grey[750],
        ),
        iconSize: 33,
      ),
    );
  }
}
