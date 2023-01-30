import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bluetick extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: width/90),
      width:width/25,
      height: height/20,
      decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
      child: Icon(
        Icons.check,
        size: height/60,
        color: Colors.white,
      ),
    );
  }
}
