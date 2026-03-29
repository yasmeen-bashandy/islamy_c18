import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy/common/app_color.dart';
import 'package:islamy/common/widgets/header_widget.dart';
import 'package:islamy/gen/assets.gen.dart';
import 'package:islamy/common/widgets/bg_layout_widget.dart';
import 'package:islamy/tabs/quran_tab/widgets/customTextFeild.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BgLayoutWidget(imagePath: Assets.images.quranTabBg.path),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(),
                SizedBox(height: 20),
                Customtextfeild(
                  hintText: 'Sura Name',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      Assets.images.quranUnselected,
                      colorFilter: ColorFilter.mode(
                        AppColor.goldColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: BorderSide.strokeAlignCenter,
                  ),
                  child: Text(
                    "Most Recently ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150, // Adjust the height as needed

                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10, // Replace with your actual item count
                    itemBuilder: (context, index) {
                      return Card(
                        color: AppColor.goldColor,
                        child: Row(
                          children: [
                            Column(children: [Text("Al-Anbiya")]),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
