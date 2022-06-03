import 'package:flutter/material.dart';
import 'package:sample_app/Widgets/avatar.dart';
import 'package:sample_app/assets.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: dulquerSalman,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammootty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: jayaram,
            displayStatus: true,
          ),
          Avatar(displayImage: asifAli, displayStatus: true),
          Avatar(
            displayImage: fahadFasil,
            displayStatus: true,
          ),
          Avatar(
            displayImage: saubinSahir,
            displayStatus: true,
          ),
          Avatar(
            displayImage: vineethSrinivasan,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dulquerSalman,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammootty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: jayaram,
            displayStatus: true,
          ),
          Avatar(
            displayImage: asifAli,
            displayStatus: true,
          ),
          Avatar(
            displayImage: fahadFasil,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(right: 5, left: 5),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text("Create \n Room", style: TextStyle(color: Colors.blue)),
        onPressed: () {
          print("Create chat room");
        },
        borderSide: BorderSide(
          color: Colors.blue,
          width: 1,
        ),
      ),
    );
  }
}
