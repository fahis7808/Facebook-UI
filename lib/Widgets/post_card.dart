import 'package:flutter/material.dart';
import 'package:sample_app/Widgets/avatar.dart';
import 'package:sample_app/Widgets/blue_tick.dart';
import 'package:sample_app/Widgets/header_button.dart';
import 'package:sample_app/assets.dart';
import 'package:sample_app/section/header_botton_section.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String postedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.postedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[700],
            thickness: 1,
          ),
          HeaderBottonSection(
            buttonOne: headerButton(
                buttonText: "like",
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  print("like to post");
                },
                buttonColor: Colors.grey),
            buttonTwo: headerButton(
                buttonText: "Comment",
                buttonIcon: Icons.comment,
                buttonAction: () {
                  print("Comment post");
                },
                buttonColor: Colors.grey),
            buttonThree: headerButton(
                buttonText: "Share",
                buttonIcon: Icons.share_outlined,
                buttonAction: () {
                  print("Share the post");
                },
                buttonColor: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: "Shares"),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  avtarHeight: 25,
                  avtarWidth: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("Dropdown");
                  },
                  icon: Icon(Icons.arrow_drop_down),
                  color: Colors.grey[700],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Container(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey[700]),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              postTitle,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          )
        : SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(postedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("Open more menu!");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
