import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook/datas/datas.dart';
import 'package:facebook/models/models.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final Post postlist;
  final Story storylist;
  PostContainer({required this.postlist, required this.storylist});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(backgroundImage: postlist.user.imageAsset),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                              text: postlist.user.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.3),
                              children: [
                                TextSpan(
                                  text: "${postlist.title}",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ])),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Text(postlist.timeAgo),
                          Icon(
                            Icons.settings,
                            color: Colors.grey,
                            size: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Column(
            children: [
              // Text(""),
              Container(
                height: 250,
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: postlist.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.grey,
                    ),
                    label: Text(
                      "Like",
                      style: TextStyle(color: Colors.grey),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.grey,
                    ),
                    label: Text(
                      "Comment",
                      style: TextStyle(color: Colors.grey),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share_outlined,
                      color: Colors.grey,
                    ),
                    label: Text(
                      "Share",
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
