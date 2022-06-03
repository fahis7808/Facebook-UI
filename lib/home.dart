import 'package:flutter/material.dart';
import 'package:sample_app/Widgets/cicular_button.dart';
import 'package:sample_app/Widgets/header_button.dart';
import 'package:sample_app/Widgets/post_card.dart';
import 'package:sample_app/assets.dart';
import 'package:sample_app/section/header_botton_section.dart';
import 'package:sample_app/section/room_section.dart';
import 'package:sample_app/section/status_section.dart';
import 'package:sample_app/section/story_section.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[350],
    );

    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[350],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search screen appears!");
                }),
            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print("Messenger appears!");
                }),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderBottonSection(
              buttonOne: headerButton(
                  buttonText: "live",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Go to live");
                  },
                  buttonColor: Colors.red),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {
                    print("Take photo");
                  },
                  buttonColor: Colors.green),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Create chat room");
                  },
                  buttonColor: Colors.purple),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: mammootty,
              name: "Mammootty",
              postedAt: "5h",
              postTitle: "CBI 5",
              postImage: cbi5,
              showBlueTick: true,
              likeCount: "11M",
              commentCount: "999K",
              shareCount: "250K",
            ),
            thickDivider,
            PostCard(
              avatar: haniMusthafa,
              name: "Hani Musthafa",
              postedAt: "10h",
              postTitle: "",
              postImage: ford,
              showBlueTick: true,
              likeCount: "1M",
              commentCount: "99K",
              shareCount: "50K",
            ),
            thickDivider,
            PostCard(
              avatar: vineethSrinivasan,
              name: "Vineeth Srinivasan",
              postedAt: "12h",
              postTitle: "",
              postImage: hridayam,
              showBlueTick: true,
              likeCount: "5M",
              commentCount: "500K",
              shareCount: "150K",
            ),
          ],
        ),
      ),
    );
  }
}
