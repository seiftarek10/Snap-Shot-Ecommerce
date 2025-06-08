import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shot/Core/Routing/route_path.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Don't Have Account ? ",
            style: Fonts.instance.font16_500Grey,
            children: [
          TextSpan(
              text: 'Sign Up',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.push(RoutePath.signupView);
                },
              style: Fonts.instance.font16_500Black)
        ]));
  }
}
