import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  String _title;
  VoidCallback _searchButtonTapped;

  MyAppBar(this._title, this._searchButtonTapped, {super.key}) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(
            _title,
            style: GoogleFonts.bebasNeue(fontSize: 54),
          )),
          GestureDetector(
            onTap: _searchButtonTapped,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200),
              child: Icon(
                Icons.search,
                size: 36,
              ),
            ),
          )
        ],
      ),
    );
  }
}
