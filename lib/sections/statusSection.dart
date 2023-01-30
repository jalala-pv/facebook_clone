import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

import 'package:facebook_clone/widgets/assets.dart';

class statusSection extends StatelessWidget {
  const statusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading:Avatar(displayImage:dq, displayStatus: false),

        title: TextField(
          decoration: InputDecoration(
            hintText: "What's on your mind ?",
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
