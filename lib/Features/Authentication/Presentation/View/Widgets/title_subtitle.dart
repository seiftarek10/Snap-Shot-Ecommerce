import 'package:flutter/material.dart';

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
          style: const TextStyle(
              color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          subTitle,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
