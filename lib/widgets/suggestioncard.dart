import 'package:facebook_clone/widgets/assets.dart';
import 'package:flutter/material.dart';

class suggestionCard extends StatelessWidget {
  final String namesugg;
  final String nofrnd;
  final String imgsugg;
  suggestionCard(
      {required this.namesugg, required this.nofrnd, required this.imgsugg});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 300,
      child: Stack(
        children: [SuggestionImage(), SuggestionDetails()],
      ),
    );
  }

  Widget SuggestionDetails() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey[400]!),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10) )
          ),
          height: 140,
          width: 300,
          child: Column(
            children: [
              ListTile(
                title: Text(namesugg),
                subtitle: Text(nofrnd + ' mutual friends'),
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.account_box),
                      label: Text('Add friend')),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: SizedBox(),
                    label: Text(
                      'Remove friend',
                      style: TextStyle(color: Colors.black),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ],
              ))
            ],
          ),
        ));
  }

  Widget SuggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Image.asset(
            imgsugg,
            height: 250,
            fit: BoxFit.cover,
          ),
        ));
  }
}
