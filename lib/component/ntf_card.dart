import 'package:flutter/cupertino.dart';

class NftCard extends StatelessWidget {
  String _imagePath;

   NftCard(this._imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            _imagePath,
            fit: BoxFit.cover,
          )),
    );
  }
}
