import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shot/Core/Routing/route_path.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class HaveAccountText extends StatelessWidget {
  const HaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Already have an account ? ",
            style: Fonts.instance.font16_500Grey,
            children: [
          TextSpan(
              text: 'Sign In',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.push(RoutePath.signInView);
                },
              style: Fonts.instance.font16_500Black)
        ]));
  }
}
