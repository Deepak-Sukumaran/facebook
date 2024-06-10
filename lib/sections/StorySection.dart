import 'package:facebook/Widgets/StoryCard.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            story: davidBeckham,
            storyavatar: davidBeckham,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Vanessa Kirby",
            story: vanessa,
            storyavatar: vanessaProPic,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Cillian Murphy",
            story: cilliaMurphy,
            storyavatar: cillianStory,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Tom Hardy",
            story: tomHardyStory,
            storyavatar: tomHardy,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Kylie Jenner",
            story: kyileStory,
            storyavatar: kyleJenner,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
