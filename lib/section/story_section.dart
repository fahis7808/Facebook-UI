import 'package:flutter/material.dart';
import 'package:sample_app/Widgets/story_card.dart';
import 'package:sample_app/assets.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add new story",
            story: dulquerSalman,
            avatar: dulquerSalman,
            createStoryStatus: true,
            displayBorder: false,
          ),
          StoryCard(
            labelText: "Mammootty",
            avatar: mammootty,
            story: beeshma,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Asif Ali",
            avatar: asifAli,
            story: kurupp,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Hani musthafa",
            avatar: haniMusthafa,
            story: ford,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Vineet sreenivasan",
            avatar: vineethSrinivasan,
            story: hridayam,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Fahad Fasil",
            avatar: fahadFasil,
            story: pushpa,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Jayaram",
            avatar: jayaram,
            story: cbi5,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Saubin Sahir",
            avatar: saubinSahir,
            story: wayFarerFilms,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
