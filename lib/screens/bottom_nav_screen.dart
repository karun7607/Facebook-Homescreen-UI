import 'package:facebook/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: palette.facebookBlue),
      child: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: "Home"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.ondemand_video),
                icon: Icon(Icons.ondemand_video_outlined),
                label: "Watch"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.cake_outlined), label: "Birthday"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.account_circle),
                icon: Icon(Icons.account_circle_outlined),
                label: "Account"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.notifications),
                icon: Icon(Icons.notifications_none_outlined),
                label: "Notification"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.menu),
                icon: Icon(Icons.menu_outlined),
                label: "Menu"),
          ]),
    );
  }
}
