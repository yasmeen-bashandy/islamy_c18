import 'package:flutter/material.dart';

class BgLayoutWidget extends StatelessWidget {
  const BgLayoutWidget({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity),
      ],
    );
    
  }
}
