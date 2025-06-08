import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class AuthentactionTitleAndSubTitle extends StatelessWidget {
  const AuthentactionTitleAndSubTitle({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Fonts.instance.font32BoldWhite.copyWith(color: Colors.black),
        ),
        Text(
          subTitle,
          style: Fonts.instance.font16_500Grey,
        ),
      ],
    );
  }
}
