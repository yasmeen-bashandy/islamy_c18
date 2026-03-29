import 'package:flutter/material.dart';
import 'package:islamy/common/widgets/bg_layout_widget.dart';
import 'package:islamy/gen/assets.gen.dart';

class HadeethTab extends StatelessWidget {
  const HadeethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [BgLayoutWidget(imagePath: Assets.images.hadeethTabBg.path)],
    );
  }
}
