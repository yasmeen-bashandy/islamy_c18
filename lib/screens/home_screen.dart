import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy/common/app_color.dart';
import 'package:islamy/gen/assets.gen.dart';
import 'package:islamy/tabs/hadeeth_tab/hadeeth_tab.dart';
import 'package:islamy/tabs/quran_tab/quran_tab.dart';
import 'package:islamy/tabs/radio_tab/radio_tab.dart';
import 'package:islamy/tabs/sebha_tab/sebha_tab.dart';
import 'package:islamy/tabs/time_tab/time_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  //navigation route name
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadeethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,
        items: [
          customBotthonNavBarItem(Assets.images.quranUnselected, "Quran"),
          customBotthonNavBarItem(Assets.images.hadeethUnselected, "Hadeeth"),
          customBotthonNavBarItem(Assets.images.sebhaUnselected, "Sabha"),
          customBotthonNavBarItem(Assets.images.radioUnselected, "Radio"),
          customBotthonNavBarItem(Assets.images.timeUnselected, "Time"),
        ],
      ),
    );
  }

  BottomNavigationBarItem customBotthonNavBarItem(String icon, String label) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(icon),
      activeIcon: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        decoration: BoxDecoration(
          color: AppColor.blackColor.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          Assets.images.quranUnselected,
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcATop),
        ),
      ),
      label: label,
    );
  }
}
