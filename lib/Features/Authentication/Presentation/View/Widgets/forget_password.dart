import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text('Forget Password ?',
          style: Fonts.instance.font14_500Black, textAlign: TextAlign.end),
    );
  }
}
