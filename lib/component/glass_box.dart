import 'dart:ui';

import 'package:flutter/cupertino.dart';

class GlassBox extends StatelessWidget {
  final child;

  const GlassBox(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}
