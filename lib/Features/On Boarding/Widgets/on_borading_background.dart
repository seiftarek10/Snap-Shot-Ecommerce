import 'package:flutter/material.dart';
import 'package:snap_shot/Core/assets/assets.dart';

class OnBoardingViewBackGroundImage extends StatelessWidget {
  const OnBoardingViewBackGroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.pngOnBoardingImage,
      fit: BoxFit.fitHeight,
    );
  }
}
