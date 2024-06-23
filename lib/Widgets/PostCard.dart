import 'package:facebook/Widgets/Avatar.dart';
import 'package:facebook/Widgets/BlueTick.dart';
import 'package:facebook/Widgets/CircularButton.dart';
import 'package:facebook/Widgets/headreFooterButton.dart';
import 'package:facebook/functions/CustomDivider.dart';
import 'package:facebook/sections/headerButtonsSection.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String postAvatarImage;
  final String postAvatarName;
  final bool verify;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final String postImageLikes;
  final String postImageComments;
  final String postImageShares;

  const PostCard(
      {super.key, required this.postAvatarImage,
      required this.postAvatarName,
      required this.verify,
      required this.publishedAt,
      required this.postTitle,
      required this.postImage,
      required this.postImageLikes,
      required this.postImageComments,
      required this.postImageShares});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          customDivider(1),
          HeaderButtonsSection(
            buttonone: headerFooterButton(
                Icons.thumb_up, Colors.grey, "Like", () {
              print("Like button clicked");
            }),
            buttontwo: headerFooterButton(
                Icons.comment, Colors.grey, "Comments", () {
              print("Comment button clicked");
            }),
            buttonthree:
                headerFooterButton(Icons.share, Colors.grey, "Share", () {
              print("share button clicked");
            }),
          ),
        ],
      ),
    );
  }

////functions

  ///Post card header
  Widget postCardHeader() {
    return ListTile(
        leading: Avatar(
          imagename: postAvatarImage,
          displayStatus: false,
          height: 50,
          width: 50,
        ),
        title: Row(
          children: [
            Text(
              postAvatarName,
              style: TextStyle(color: Colors.grey[780]),
            ),
            const SizedBox(
              width: 6,
            ),
            //Blue Tick
            verify == true ? const BlueTick() : const SizedBox()
          ],
        ),
        subtitle: Row(
          children: [
            Text(publishedAt ?? ""),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              Icons.public,
              size: 14,
            ),
          ],
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 0),
          child: CircularButton(
            buttonAction: () {},
            buttonIcon: Icons.more_horiz,
            buttonColor: Colors.transparent,
          ),
        ));
  }

  //title section

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.only( bottom: 5,right: 280 , left: 15),
      child: Text(
        postTitle ?? "",
        style: const TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }

//Image section
  Widget imageSection() {
    return Container(
      child: Image.asset(postImage),
    );
  }

//footer section
  Widget footerSection() {
    return Container(
        height: 50,
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  displaytext(postImageLikes),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  displaytext(postImageComments),
                  const SizedBox(
                    width: 5,
                  ),
                  displaytext("comments"),
                  const SizedBox(
                    width: 15,
                  ),
                  displaytext(postImageShares),
                  const SizedBox(
                    width: 5,
                  ),
                  displaytext("Shares"),
                  const SizedBox(
                    width: 5,
                  ),
                  Avatar(
                    imagename: postAvatarImage,
                    displayStatus: false,
                    height: 18,
                    width: 18,
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget displaytext(String label) {
    return Text(
      label,
      style: TextStyle(color: Colors.grey[750]),
    );
  }
}
