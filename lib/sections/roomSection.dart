import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/widgets/assets.dart';

class roomSection extends StatelessWidget {
  const roomSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(height/90),
      height: height/14,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          createRoomButton(context),
          Avatar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avatar(
            displayImage: raj,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammooty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avatar(
            displayImage: nivin,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avatar(
            displayImage: raj,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammooty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avatar(
            displayImage: nivin,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left:height/60 , right: height/150),
      child: OutlinedButton.icon(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
              BorderSide(color: Colors.lightBlueAccent)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(height/10))),
        ),
        onPressed: () {
          print("create chat room");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \n room",
        ),
      ),
    );
  }
}
