import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomebottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.red,
      index: 2,
      items: <Widget>[
        Icon(Icons.home, size: 30),
        Icon(Icons.feed, size: 30),
        Icon(Icons.add_box, size: 30, color: Colors.blueAccent),
        Icon(Icons.list, size: 30),
      ],
    );
  }
}
