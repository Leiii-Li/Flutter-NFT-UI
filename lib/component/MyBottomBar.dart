import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nft_ui/component/glass_box.dart';

class MyBottomBar extends StatelessWidget {
  final int index;
  final Function(int) onTap;

  MyBottomBar(this.index, this.onTap, {super.key}) {}

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: onTap,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Person")
        ]);
  }
}
