import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';

class OnBoardingTitleAndSubTitle extends StatelessWidget {
  const OnBoardingTitleAndSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Order Your Style',
          style: TextStyle(
              fontSize: 36, color: Colors.white, fontWeight: FontWeight.w900),
        ),
        Space.instance.vertical8,
        const Text(
          'Explore a curated collection of clothing and accessories designed for your lifestyle.',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
