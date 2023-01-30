import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final void Function() buttonAction;
  final IconData buttonIcon;
  final Color color;

  CircularButton(
      {required this.buttonAction,
      required this.buttonIcon,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
   var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(height/200),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: color,
        ),
      ),
    );
  }
}
