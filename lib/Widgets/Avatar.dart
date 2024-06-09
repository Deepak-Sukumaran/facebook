import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imagename;
  Avatar(this.imagename);
  @override
  Widget build(BuildContext context) {
    return

        // ClipRRect(
        //     borderRadius: BorderRadius.circular(100),
        //     child: Image.asset(
        //       imagename,
        //       fit: BoxFit.fitWidth,
        //     ),
        //   );

        CircleAvatar(
      backgroundImage: AssetImage(
        imagename,
      ),
      radius: 30,
      backgroundColor: Colors.transparent,
    );
  }
}
