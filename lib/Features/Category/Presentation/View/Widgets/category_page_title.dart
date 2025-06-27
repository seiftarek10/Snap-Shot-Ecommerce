import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class CategoryPageTitle extends StatelessWidget {
  const CategoryPageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Categories',
      textAlign: TextAlign.center,
      style: Fonts.instance.font32BoldWhite
          .copyWith(color: AppColors.instance.black),
    );
  }
}
