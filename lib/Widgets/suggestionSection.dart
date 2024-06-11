import 'package:facebook/Widgets/SuggestionCard.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggetionSection extends StatelessWidget {
  const SuggetionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            title: Text("Pepole you may know"),
            trailing: Icon(Icons.more_horiz),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  name: 'Alaxandra Daddrio',
                  photo: alexandraDaddrio,
                  Mutual: '24',
                ),
                SuggestionCard(
                  name: 'Tom Cruise',
                  photo: tomCruise,
                  Mutual: '12',
                ),
                SuggestionCard(name: "Cillian Murphy", photo: cillianStory, Mutual: "8")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
