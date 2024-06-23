// ignore_for_file: prefer_const_constructors
import 'package:facebook/Widgets/CircularButton.dart';
import 'package:facebook/Widgets/PostCard.dart';
import 'package:facebook/Widgets/headreFooterButton.dart';
import 'package:facebook/Widgets/suggestionSection.dart';
import 'package:facebook/assets.dart';

import 'package:facebook/functions/CustomDivider.dart';
import 'package:facebook/sections/RoomSection.dart';
import 'package:facebook/sections/StorySection.dart';
import 'package:facebook/sections/headerButtonsSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 28),
        ),
        actions: [
          //custom buttons
          CircularButton(
            buttonAction: () {
              print("go to search page");
            },
            buttonIcon: Icons.search_outlined,
          ),
          CircularButton(
              buttonAction: () {
                print("go to message page");
              },
              buttonIcon: Icons.message_outlined)
        ],
      ),
      body: ListView(
        physics: ScrollPhysics(parent: ClampingScrollPhysics()),
        // Status Section
        children: [
          StatusSection(),
          // divider
          customDivider(1),
          HeaderButtonsSection(
            buttonone: headerFooterButton(
                Icons.video_call, Colors.redAccent, "Live", () {
              print("Live button clicked");
            }),
            buttontwo:
                headerFooterButton(Icons.photo, Colors.green, "Photos", () {}),
            buttonthree: headerFooterButton(
                Icons.podcasts, Colors.purple, "Room", () {}),
          ),
          customDivider(9),
          RoomSection(),
          customDivider(9),
          StorySection(),
          customDivider(9),
          PostCard(
            postAvatarImage: kyleJenner,
            postAvatarName: "Kylie Jenner",
            verify: true,
            publishedAt: "4h",
            postTitle: '💃🏻 metGala 2024   ',
            postImage: kylieMet,
            postImageLikes: '2.46M',
            postImageComments: '444k',
            postImageShares: '24k',
          ),
          customDivider(9),
          SuggetionSection(),
          customDivider(9),
          PostCard(
            postAvatarImage: cillianStory,
            postAvatarName: "Cillian Murphy",
            verify: true,
            publishedAt: "44min",
            postTitle: "💼 Oppenhimer     ",
            postImage: oppenhimer,
            postImageLikes: '1.34M',
            postImageComments: '129k',
            postImageShares: '44k',
          ),
          customDivider(9),
          PostCard(
            postAvatarImage: tomHardy,
            postAvatarName: "Tom Hardy",
            verify: true,
            publishedAt: "44min",
            postTitle: "venom                   ",
            postImage: venom,
            postImageLikes: '1.4M',
            postImageComments: '29k',
            postImageShares: '14k',
          ),
          customDivider(9),
          PostCard(
            postAvatarImage: tomCruise,
            postAvatarName: "Tom Cruise",
            verify: true,
            publishedAt: "30min",
            postTitle: "🛩 TopGun1989    ",
            postImage: topGun,
            postImageLikes: '2.84M',
            postImageComments: '129k',
            postImageShares: '44k',
          ),
          customDivider(9),
          PostCard(
            postAvatarImage: bradPit,
            postAvatarName: "Brad Pit",
            verify: true,
            publishedAt: "5h",
            postTitle: "🕶️once upon a time HollyWood   ",
            postImage: bradPost,
            postImageLikes: '1.34M',
            postImageComments: '129k',
            postImageShares: '44k',
          ),
          customDivider(9),

          PostCard(
            postAvatarImage: alexandraDaddrio,
            postAvatarName: "Alexandra Daddrio",
            verify: true,
            publishedAt: "30min",
            postTitle: "🪅Met Gala 2024  ",
            postImage: alexandraMetGala,
            postImageLikes: '4.34M',
            postImageComments: '129k',
            postImageShares: '244k',
          ),
          customDivider(9),
          PostCard(
            postAvatarImage: kyleJenner,
            postAvatarName: "Kylie Jenner",
            verify: true,
            publishedAt: "4h",
            postTitle: '😍 Proud mommi ',
            postImage: kyileStory,
            postImageLikes: '2.46M',
            postImageComments: '444k',
            postImageShares: '24k',
          ),
        ],
      ),
    );
  }
}
