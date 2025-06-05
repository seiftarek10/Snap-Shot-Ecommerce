import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shot/Core/Routing/route_path.dart';

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
          color: Colors.black.withOpacity(0.65),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Get Started',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            IconButton.filled(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
                size: 32,
              ),
              style: IconButton.styleFrom(backgroundColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
