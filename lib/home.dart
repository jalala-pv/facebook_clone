import 'package:facebook_clone/sections/headerButton.dart';
import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/sections/storySection.dart';
import 'package:facebook_clone/sections/suggestionsection.dart';
import 'package:facebook_clone/widgets/CircularButton.dart';
import 'package:facebook_clone/widgets/CircularButton.dart';
import 'package:facebook_clone/widgets/assets.dart';
import 'package:facebook_clone/widgets/headerbuttonwidget.dart';
import 'package:facebook_clone/widgets/post.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  

  Widget Div({required double boldness, required Color color}) {
    

    return Divider(
      thickness: boldness,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize:MediaQuery.textScaleFactorOf(context)*25),
          ),
          actions: [
            CircularButton(
              buttonAction: () {
                print("search clicked");
              },
              buttonIcon: Icons.search,
            ),
            CircularButton(
              buttonAction: () {
                print("msg clicked");
              },
              buttonIcon: Icons.message,
            )
          ],
        ),
        body: ListView(
          children: [
            statusSection(),
            Div(boldness: 1, color: Colors.grey[400]!),
            HeaderButton(
                buttonOne: headerButton(
                    buttonText: 'live',
                    buttonicon: Icons.video_call,
                    color: Colors.red,
                    buttonAction: () {
                      print("live clicked");
                    }),
                buttonTwo: headerButton(
                    buttonText: 'Photo',
                    buttonicon: Icons.photo_album,
                    color: Colors.green,
                    buttonAction: () {
                      print("Photo clickr]ed");
                    }),
                buttonThree: headerButton(
                    buttonText: 'Room',
                    buttonicon: Icons.video_call,
                    color: Colors.purple,
                    buttonAction: () {
                      print("room clicked");
                    })),
            Div(boldness:1, color: Colors.grey[300]!),
            roomSection(),
            Div(boldness: 10, color: Colors.grey[300]!),
            storySection(),
            Div(boldness: 10, color: Colors.grey[300]!),
            Post(
              url: mammooty,
              actname: 'Mammooty',
              timepost: '5h',
              titlepost: '',
              postImage: mamukapost,
              bluetick: true,
              LikeCount: '100k',
              Commentcounts: '2k',
              ShareCount: '10k',
              imguser: mammooty,
            ),
            Div(boldness: 1, color: Colors.grey[400]!),
            HeaderButton(
                buttonOne: headerButton(
                    buttonText: 'Like',
                    buttonicon: Icons.thumb_up_alt,
                    color: Colors.grey,
                    buttonAction: () {
                      print("live clicked");
                    }),
                buttonTwo: headerButton(
                    buttonText: 'Comment',
                    buttonicon: Icons.message_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("Photo clickr]ed");
                    }),
                buttonThree: headerButton(
                    buttonText: 'Share',
                    buttonicon: Icons.share_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("room clicked");
                    })),
            Div(boldness: 10, color: Colors.grey[300]!),
            Post(
              url: raj,
              actname: 'Prithviraj',
              timepost: '1 day ago',
              titlepost: prithvititle,
              postImage: prithvipost1,
              bluetick: true,
              LikeCount: '200k',
              Commentcounts: '1k',
              ShareCount: '5k',
              imguser: raj,
            ),
            Div(boldness: 1, color: Colors.grey[400]!),
            HeaderButton(
                buttonOne: headerButton(
                    buttonText: 'Like',
                    buttonicon: Icons.thumb_up_alt,
                    color: Colors.grey,
                    buttonAction: () {
                      print("live clicked");
                    }),
                buttonTwo: headerButton(
                    buttonText: 'Comment',
                    buttonicon: Icons.message_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("Photo clickr]ed");
                    }),
                buttonThree: headerButton(
                    buttonText: 'Share',
                    buttonicon: Icons.share_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("room clicked");
                    })),
            Div(boldness: 10, color: Colors.grey[300]!),
            Post(
              url: dq,
              actname: 'Dulquer Salman',
              timepost: '2 day ago',
              titlepost: dqtitle,
              postImage: dqpost,
              bluetick: true,
              LikeCount: '300k',
              Commentcounts: '2k',
              ShareCount: '1k',
              imguser: dq,
            ),
            Div(boldness: 1, color: Colors.grey[400]!),
            HeaderButton(
                buttonOne: headerButton(
                    buttonText: 'Like',
                    buttonicon: Icons.thumb_up_alt,
                    color: Colors.grey,
                    buttonAction: () {
                      print("live clicked");
                    }),
                buttonTwo: headerButton(
                    buttonText: 'Comment',
                    buttonicon: Icons.message_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("Photo clickr]ed");
                    }),
                buttonThree: headerButton(
                    buttonText: 'Share',
                    buttonicon: Icons.share_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("room clicked");
                    })),
            Div(boldness: 10, color: Colors.grey[300]!),
            suggestionSection(),
            Div(boldness: 10, color: Colors.grey[300]!),
            Post(
              url: mohanlal,
              actname: 'MohanLal',
              timepost: '3day ago',
              titlepost: '',
              postImage: lalpost,
              bluetick: true,
              LikeCount: '100k',
              Commentcounts: '1k',
              ShareCount: '10k',
              imguser: dq,
            ),
            Div(boldness: 1, color: Colors.grey[400]!),
            HeaderButton(
                buttonOne: headerButton(
                    buttonText: 'Like',
                    buttonicon: Icons.thumb_up_alt,
                    color: Colors.grey,
                    buttonAction: () {
                      print("live clicked");
                    }),
                buttonTwo: headerButton(
                    buttonText: 'Comment',
                    buttonicon: Icons.message_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("Photo clickr]ed");
                    }),
                buttonThree: headerButton(
                    buttonText: 'Share',
                    buttonicon: Icons.share_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("room clicked");
                    })),
            Div(boldness: 10, color: Colors.grey[300]!),
            Post(
              url: dq,
              actname: 'Dulquer Salman',
              timepost: '5 day ago',
              titlepost: dqtitle2,
              postImage: dqpost2,
              bluetick: true,
              LikeCount: '400k',
              Commentcounts: '1k',
              ShareCount: '2k',
              imguser: dq,
            ),
            Div(boldness: 1, color: Colors.grey[400]!),
            HeaderButton(
                buttonOne: headerButton(
                    buttonText: 'Like',
                    buttonicon: Icons.thumb_up_alt,
                    color: Colors.grey,
                    buttonAction: () {
                      print("live clicked");
                    }),
                buttonTwo: headerButton(
                    buttonText: 'Comment',
                    buttonicon: Icons.message_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("Photo clickr]ed");
                    }),
                buttonThree: headerButton(
                    buttonText: 'Share',
                    buttonicon: Icons.share_outlined,
                    color: Colors.grey,
                    buttonAction: () {
                      print("room clicked");
                    })),
            Div(boldness: 10, color: Colors.grey[300]!),
          ],
        ),
      ),
    );
  }

}
