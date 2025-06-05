import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class OnBoardingTitleAndSubTitle extends StatelessWidget {
  const OnBoardingTitleAndSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Order Your Style', style: Fonts.instance.font32BoldWhite),
        Space.instance.vertical8,
        Text(
            'Explore a curated collection of clothing and accessories designed for your lifestyle.',
            textAlign: TextAlign.center,
            style: Fonts.instance.font14White),
      ],
    );
  }
}
