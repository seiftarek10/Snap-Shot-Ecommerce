import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class PageTextTitle extends StatelessWidget {
  const PageTextTitle({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Fonts.instance.font32BoldWhite
          .copyWith(color: AppColors.instance.black),
    );
  }
}
