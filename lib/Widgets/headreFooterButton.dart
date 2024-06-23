//  headerButton
  import 'package:flutter/material.dart';

Widget headerFooterButton(IconData headerIcon, Color headerButtonColor,
      String headerButtonText, void Function()? headerButtonAction) {
    return TextButton.icon(
        onPressed: headerButtonAction,
        icon: Icon(
          headerIcon,
          color: headerButtonColor,
        ),
        label: Text(
          headerButtonText,
          style: const TextStyle(color: Colors.black54),
        ));
  }