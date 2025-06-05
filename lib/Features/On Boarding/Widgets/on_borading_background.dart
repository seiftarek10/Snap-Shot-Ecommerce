import 'package:flutter/material.dart';
import 'package:snap_shot/Core/assets.dart';

class OnBoardingViewBackGroundImage extends StatelessWidget {
  const OnBoardingViewBackGroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.onBoardingImage,
      fit: BoxFit.fitHeight,
    );
  }
}
