// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imagename;
  final bool displayStatus;
  Avatar({required this.imagename, required this.displayStatus});
  @override
  Widget build(BuildContext context) {
    // Widget? statusIndicator;
    // if (displayStatus == true) {
    //   statusIndicator = Positioned(
    //       bottom: 3,
    //       right: 4,
    //       child: Container(
    //         width: 15,
    //         height: 15,
    //         decoration: BoxDecoration(
    //             color: Colors.green,
    //             shape: BoxShape.circle,
    //             border: Border.all(color: Colors.white, width: 2)),
    //       ));
    // } else {
    //   statusIndicator = SizedBox();
    // }

    return Stack(children: [
      Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: ClipRRect(
          child: Image.asset(
            imagename,
            height: 55,
            width: 55,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      displayStatus == true
          ? Positioned(
              bottom: 3,
              right: 4,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
              ))
          : SizedBox(),
    ]);
  }
}
