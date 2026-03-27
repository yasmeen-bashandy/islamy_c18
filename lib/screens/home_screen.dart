import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy/common/app_color.dart';
import 'package:islamy/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  //navigation route name
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.quranUnselected),
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.hadeethUnselected),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: AppColor.blackColor.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SvgPicture.asset(
                Assets.images.hadeethSelected,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcATop),
              ),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.sebhaUnselected),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: AppColor.blackColor.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SvgPicture.asset(
                Assets.images.sebhaSelected,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcATop),
              ),
            ),

            label: 'Hadeeth',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.radioUnselected),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: AppColor.blackColor.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SvgPicture.asset(
                Assets.images.radioSelected,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcATop),
              ),
            ),
            label: 'Hadeeth',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.timeUnselected),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: AppColor.blackColor.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SvgPicture.asset(
                Assets.images.timeSelected,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcATop),
              ),
            ),
            label: 'Hadeeth',
          ),
        ],
      ),
    );
  }
}
