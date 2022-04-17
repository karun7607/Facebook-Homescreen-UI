import 'package:facebook/config/palette.dart';
import 'package:facebook/datas/datas.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 73,
      color: Colors.white,
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: currentUser.imageAsset,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "What's On your mind?",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              // controller: _controller,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Icon(
                Icons.collections_outlined,
                size: 27,
                color: Colors.grey,
              ),
              Text(
                "Photo",
                style: TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
