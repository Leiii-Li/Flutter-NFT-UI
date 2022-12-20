import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabBar extends StatelessWidget {
  List _tabOptions;

  MyTabBar(this._tabOptions) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: [
              Text(
                _tabOptions[0][0],
                style: GoogleFonts.bebasNeue(fontSize: 16),
              ),
              Text(_tabOptions[1][0],
                  style: GoogleFonts.bebasNeue(fontSize: 16)),
              Text(_tabOptions[2][0],
                  style: GoogleFonts.bebasNeue(fontSize: 16)),
            ]),
        Expanded(
            child: TabBarView(
          children: [
            _tabOptions[0][1],
            _tabOptions[1][1],
            _tabOptions[2][1],
          ],
        ))
      ],
    );
  }
}
