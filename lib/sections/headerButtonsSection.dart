// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class HeaderButtonsSection extends StatelessWidget {
  final Widget buttonone;
  final Widget buttontwo;
  final Widget buttonthree;

  const HeaderButtonsSection(
      {super.key, required this.buttonone,
      required this.buttontwo,
      required this.buttonthree});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonone,
              VerticalDivider(
                thickness: 1,
              ),
              buttontwo,
              VerticalDivider(
                thickness: 1,
              ),
              buttonthree
            ],
          )),
    );
  }
}
