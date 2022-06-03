import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double avtarWidth;
  final double avtarHeight;

  Avatar({
    required this.displayImage,
    required this.displayStatus,
    this.displayBorder = false,
    this.avtarHeight = 50,
    this.avtarWidth = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: displayBorder
                  ? Border.all(
                      color: Colors.blueAccent,
                      width: 3,
                    )
                  : Border()),
          padding: EdgeInsets.only(left: 3, right: 3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              height: avtarHeight,
              width: avtarWidth,
            ),
          ),
        ),
        displayStatus
            ? Positioned(
                bottom: 0,
                right: 2,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox()
      ],
    );
  }
}
