import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HavaAccountText extends StatelessWidget {
  const HavaAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Don't Have Account ? ",
            style: const TextStyle(color: Colors.grey, fontSize: 18),
            children: [
          TextSpan(
              text: 'Sign Up',
              recognizer: TapGestureRecognizer()..onTap = () {},
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18))
        ]));
  }
}
