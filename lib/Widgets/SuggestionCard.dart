import 'dart:ffi';

import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String? name;
  final String? photo;
  final String? Mutual;
  const SuggestionCard({super.key, required this.name, 
  required this.photo, 
  required this.Mutual, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.black12,
      width: 300,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [Suggestionimage(), suggestionDetails()],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        bottom: 0,
        child: Container(
          color: Colors.grey[110],
          width: 300,
          height: 120,
          child: Column(
            children: [
              ListTile(
                title: Text(name ?? ""),
                subtitle: Text("$Mutual Mutual friends"),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Button1(
                        buttonIcon: Icons.add,
                        buttonColor: Colors.blueAccent,
                        buttonTextColor: Colors.white,
                        buttonIconColor: Colors.white,
                        buttonText: "Add friend"),
                    const SizedBox(
                      width: 40,
                    ),
                    button2(
                        buttonText: "Ignore",
                        buttoncolor: Colors.black,
                        buttonTextColor: Colors.white)
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget Button1({
    Void Function()? buttonAction,
    required IconData? buttonIcon,
    required Color? buttonColor,
    required Color? buttonTextColor,
    required Color? buttonIconColor,
    required String? buttonText,
  }) {
    return SizedBox(
      height: 40,
      child: ElevatedButton.icon(
        onPressed: buttonAction,
        label: Text(
          buttonText ?? "",
          style: TextStyle(color: buttonTextColor),
        ),
        icon: Icon(
          buttonIcon ??
              Icons.add, // Provide a default add icon if buttonIcon is null
          color: buttonIconColor ??
              Colors.black, // Default icon color to black if not provided
        ),
        style: ButtonStyle(
          iconColor: WidgetStateProperty.all<Color>(buttonIconColor ??
              Colors.black), // Default icon color to black if not provided
          backgroundColor: WidgetStateProperty.all<Color>(buttonColor ??
              Colors.blue), // Default background color to blue if not provided
        ),
      ),
    );
  }

  Widget button2({
    void Function()? buttonAction,
    required String? buttonText,
    required Color? buttoncolor,
    required Color? buttonTextColor,
  }) {
    return SizedBox(
        height: 40,
        child: ElevatedButton.icon(
            onPressed: buttonAction,
            label: Text(
              buttonText!,
              style: TextStyle(color: buttoncolor),
            )));
  }

  Widget Suggestionimage() {
    return Positioned(
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.asset(
              photo!,
              height: 220,
              fit: BoxFit.cover,
            )));
  }
}
