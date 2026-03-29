import 'package:flutter/material.dart';
import 'package:islamy/gen/assets.gen.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.images.islamyHeader.path, width: 300, height: 140),
      ],
    );
  }
}
