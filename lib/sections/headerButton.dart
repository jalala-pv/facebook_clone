import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;
  HeaderButton(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height/18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          Divider,
          buttonTwo,
          Divider,
          buttonThree,
        ],
      ),
    );
  }

  Widget Divider = VerticalDivider(thickness: 1, color: Colors.grey[400]);
}
