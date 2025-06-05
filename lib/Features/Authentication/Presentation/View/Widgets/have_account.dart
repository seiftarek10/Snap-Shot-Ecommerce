import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class HavaAccountText extends StatelessWidget {
  const HavaAccountText({
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
              recognizer: TapGestureRecognizer()..onTap = () {},
              style: Fonts.instance.font16_500Black)
        ]));
  }
}
