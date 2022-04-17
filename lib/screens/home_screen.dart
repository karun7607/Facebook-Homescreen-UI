import 'package:facebook/config/palette.dart';
import 'package:facebook/datas/datas.dart';
import 'package:facebook/screens/bottom_nav_screen.dart';
import 'package:facebook/screens/post_container.dart';
import 'package:facebook/screens/stories_container.dart';
import 'package:facebook/screens/user_container.dart';
import 'package:facebook/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromRGBO(240, 242, 245, 0.97),
        backgroundColor: palette.saffold,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              backgroundColor: palette.facebookBlue,
              title: Text(
                "facebook",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.0,
                ),
              ),
              actions: [
                IconButton(
                    iconSize: 30, icon: Icon(Icons.search), onPressed: () {}),
                IconButton(
                    iconSize: 30,
                    icon: Icon(MdiIcons.facebookMessenger),
                    onPressed: () {}),
              ],
            ),
            SliverToBoxAdapter(child: UserContainer()),
            SliverToBoxAdapter(child: StoriesContainer()),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final postuser = posts[index];
                final storyuser = stories[index];
                return PostContainer(
                  postlist: postuser,
                  storylist: storyuser,
                );
              }, childCount: 5),
            )
          ],
        ),
        bottomNavigationBar: BottomNavScreen());
  }
}
