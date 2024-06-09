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
          
          StoryCard(labelText: "Add to story", story: davidBeckham, avatar:davidBeckham ,createStoryStatus: true, ),
          StoryCard(labelText: "Vanessa Kirby", story: vanessa, avatar:vanessaProPic ,createStoryStatus: false, ),
          StoryCard(labelText: "Cillian Murphy", story: cillianStory, avatar:cilliaMurphy ,createStoryStatus: false, ),
          StoryCard(labelText: "Tom Hardy", story: tomHardyStory, avatar:tomHardy,createStoryStatus: false, ),
          StoryCard(labelText: "Kylie Jenner", story: kyileStory, avatar:kyleJenner,createStoryStatus: false, ),
          
          
          ],
      ),
    );
  }
}
