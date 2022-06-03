import 'package:flutter/material.dart';
import 'package:sample_app/Widgets/avatar.dart';
import 'package:sample_app/assets.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: dulquerSalman,
        displayStatus: false,
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "What's on your maind?",
          hintStyle: TextStyle(color: Colors.black38),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
