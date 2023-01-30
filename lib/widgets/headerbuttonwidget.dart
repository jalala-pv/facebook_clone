 import 'package:flutter/material.dart';

Widget headerButton(
      {required String buttonText,
      required IconData buttonicon,
      required Color color,
      required void Function() buttonAction}) {
    return ElevatedButton.icon(
      onPressed: () {
        buttonAction;
      },
      icon: Icon(
        buttonicon,
        color: color,
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white10, elevation: 0),
    );
  }
