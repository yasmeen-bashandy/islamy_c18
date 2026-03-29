import 'package:flutter/material.dart';
import 'package:islamy/common/app_color.dart';

class Customtextfeild extends StatelessWidget {
  const Customtextfeild({super.key, this.prefixIcon, required this.hintText});
  final Widget? prefixIcon;
  final String hintText;
  OutlineInputBorder get _border => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: AppColor.goldColor),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.blackColor.withValues(alpha: .7),
        border: _border,
        enabledBorder: _border,
        focusedBorder: _border,
        hintStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        hintText: hintText,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
