import 'package:facebook_clone/widgets/assets.dart';
import 'package:facebook_clone/widgets/suggestioncard.dart';
import 'package:flutter/material.dart';

class suggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text('People You May Know'),
            trailing: Icon(Icons.more_horiz),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                suggestionCard(
                  namesugg: 'Varun Dhawan',
                  nofrnd: '4',
                  imgsugg: varun,
                ),
                suggestionCard(
                  namesugg: 'Sidharth Malhotra',
                  nofrnd: '5',
                  imgsugg: sid,
                ),
             
                suggestionCard(
                  namesugg: 'Ashwin Kumar',
                  nofrnd: '3',
                  imgsugg: ash,
                ),
                   suggestionCard(
                  namesugg: 'Sai Ketan Rao',
                  nofrnd: '2',
                  imgsugg: sai,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
