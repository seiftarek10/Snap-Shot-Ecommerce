import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Profile',
      style: Fonts.instance.font26BoldBlack,
    );
  }
}
