import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Features/On%20Boarding/Widgets/on_boarding_button.dart';
import 'package:snap_shot/Features/On%20Boarding/Widgets/on_borading_background.dart';
import 'package:snap_shot/Features/On%20Boarding/Widgets/onboarding_title_subtitle.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          const OnBoardingViewBackGroundImage(),
          Positioned(
            bottom: 100,
            right: 50,
            left: 50,
            child: Column(
              children: [
                const OnBoardingTitleAndSubTitle(),
                Space.instance.vertical36,
                const OnBoardingStartedButton()
              ],
            ),
          )
        ],
      )),
    );
  }
}
