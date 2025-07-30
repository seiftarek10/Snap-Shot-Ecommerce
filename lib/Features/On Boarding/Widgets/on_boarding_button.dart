import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shot/Core/Routing/route_path.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class OnBoardingStartedButton extends StatelessWidget {
  const OnBoardingStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go(RoutePath.signInView);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 25),
        decoration: BoxDecoration(
          color: AppColors.instance.black.withOpacity(0.65),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Get Started', style: Fonts.instance.font20White),
            IconButton.filled(
              onPressed: () {},   
              color: AppColors.instance.white,        
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: AppColors.instance.black,
                size: 32,
              ),
              style: IconButton.styleFrom(
                  backgroundColor: AppColors.instance.white),
            )
          ],
        ),
      ),
    );
  }
}
