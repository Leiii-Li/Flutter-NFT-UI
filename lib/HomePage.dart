import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nft_ui/component/MyAppBar.dart';
import 'package:flutter_nft_ui/component/MyBottomBar.dart';
import 'package:flutter_nft_ui/component/MyTabBar.dart';
import 'package:flutter_nft_ui/component/glass_box.dart';
import 'package:flutter_nft_ui/main.dart';
import 'package:flutter_nft_ui/tabs/RecentTab.dart';
import 'package:flutter_nft_ui/tabs/TopTab.dart';
import 'package:flutter_nft_ui/tabs/TrendingTab.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List _tabOptions = const [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()]
  ];

  void _searchButtonTapped() {}

  int _currentBottomIndex = 0;

  void _bottomBarTap(int index) {
    setState(() {
      _currentBottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabOptions.length,
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          extendBody: true,
          bottomNavigationBar:
              GlassBox(MyBottomBar(_currentBottomIndex, _bottomBarTap)),
          body: Column(
            children: [
              MyAppBar("Explore Collections", _searchButtonTapped),
              Expanded(
                child: MyTabBar(_tabOptions),
              )
            ],
          ),
        ));
  }
}
