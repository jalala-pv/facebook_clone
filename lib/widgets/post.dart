import 'package:facebook_clone/widgets/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/bluetick.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String url;
  final String actname;
  final String timepost;
  final String titlepost;
  final String postImage;
  final bool bluetick;
  final String LikeCount;
  final String Commentcounts;
  final String ShareCount;
  final String imguser;
  Post(
      {required this.url,
      required this.actname,
      required this.timepost,
      required this.titlepost,
      required this.postImage,
      this.bluetick = false,
      required this.LikeCount,
      required this.Commentcounts,
      required this.ShareCount,
      required this.imguser});
  @override
  Widget build(BuildContext context) {


    return Container(
      child: Column(
        children: [
          PostHeader(context),
          title(context),
          ImageSection(context),
          footer(context),
        ],
      ),
    );
  }

  Widget footer(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height/25,
      margin: EdgeInsets.all(height/90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //icon
          Container(
            child: Row(
              children: [
                Container(
                  width: width/15,
                  height: height/15,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                  child: Icon(
                    Icons.thumb_up_alt,
                    color: Colors.white,
                    size: height/40,
                  ),
                ),
                //likes
                displaytext(label: LikeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displaytext(
                    label: Commentcounts +
                        ' comments   ' +
                        ShareCount +
                        ' Shares'),
                SizedBox(
                  child: Avatar(displayImage: imguser, displayStatus: false),
                  width: width/12,
                  height: height/5,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey[700],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displaytext({required String label}) {
    return Text(
      label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget ImageSection(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(bottom: height/500),
      child: Image.asset(postImage),
    );
  }

  Widget title(BuildContext context) {
        var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return titlepost != null && titlepost != ''
        ? Container(
            margin: EdgeInsets.all(height/100),
            child: Text(titlepost == null ? '' : titlepost))
        : SizedBox();
  }

  Widget PostHeader(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return ListTile(
      leading: Avatar(displayImage: url, displayStatus: false),
      title: Row(
        children: [Text(actname), bluetick ? Bluetick() : SizedBox()],
      ),
      subtitle: Row(
        children: [
          Text(
            timepost,
          ),
          SizedBox(width: height/90),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: height/50,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          )),
    );
  }
}
