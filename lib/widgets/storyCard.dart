import 'package:facebook_clone/widgets/CircularButton.dart';
import 'package:facebook_clone/widgets/CircularButton.dart';
import 'package:facebook_clone/widgets/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool CreateStoryStatus;
  StoryCard(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.CreateStoryStatus = false});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width/2.5,
      margin: EdgeInsets.only(
        left: height/95,
        right: width/70,
        top: height/100,
        bottom: height/80,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(height/40)),
      child: Stack(
        children: [
          Positioned(
            left: width/70,
            top: width/50,
            child: CreateStoryStatus
                ? CircularButton(
                    buttonAction: () {
                      print("Add story");
                    },
                    buttonIcon: Icons.add,
                    color: Colors.blue,
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    circlestory: true,
                  ),
          ),
          Positioned(
            child: Text(
              labelText,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            bottom:width/40 ,
            left: width/50,
          ),
        ],
      ),
    );
  }
}
