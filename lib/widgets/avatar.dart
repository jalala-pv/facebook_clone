import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool circlestory;
  Avatar(
      {required this.displayImage,
      required this.displayStatus,
      this.circlestory = false});

  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: circlestory
                ? Border.all(
                    color: Colors.blueAccent,
                    width: width/150,
                  )
                : null,
          ),
          padding: EdgeInsets.only(left: width/100, right: width/100),
          child: ClipRRect(
            child: Image.asset(
            fit:BoxFit.cover,
              displayImage,
              width: width/7,
              height: height/14,
            ),
            borderRadius: BorderRadius.circular(height/2),
          ),
        ),
        //status Indicator
        displayStatus
            ? Positioned(
                bottom: 0,
                right: width/500,
                child: Container(
                  width: width/25,
                  height: height/40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.greenAccent,
                      border: Border.all(color: Colors.white, width: width/200)),
                ))
            : SizedBox(),
      ],
    );
  }
}
