import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook/datas/datas.dart';
import 'package:flutter/material.dart';
import 'package:facebook/config/palette.dart';

class StoriesContainer extends StatefulWidget {
  const StoriesContainer({Key? key}) : super(key: key);

  @override
  State<StoriesContainer> createState() => _StoriesContainerState();
}

class _StoriesContainerState extends State<StoriesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        // color: palette.facebookBlue,
        // color: Colors.grey,
        child: ListView.builder(
            // shrinkWrap: true,
            // primary: true,
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Stack(children: [
                    Container(
                      height: 200,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            opacity: 0.6,
                            image: currentUser.imageAsset,
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                        top: 8.0,
                        left: 8.0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 30,
                              )),
                        )),
                    Positioned(
                        left: 16,
                        bottom: 16,
                        child: Text(
                          "Add to Story",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ))
                  ]),
                );
              }
              final storypost = stories[index - 1];
              final storyuser = otherUser[index - 1];
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                          height: 200,
                          width: 110,
                          fit: BoxFit.cover,
                          imageUrl: storypost.imageUrl),
                    ),
                  ),
                  Positioned(
                      top: 16.0,
                      left: 16.0,
                      child: CircleAvatar(
                        backgroundColor: palette.facebookBlue,
                        radius: 20,
                        child: CircleAvatar(
                          radius: 17,
                          backgroundImage: storyuser.imageAsset,
                        ),
                      )),
                  Positioned(
                      right: 16,
                      left: 16,
                      bottom: 16,
                      child: Text(
                        storyuser.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ))
                ],
              );
            }));
  }
}
