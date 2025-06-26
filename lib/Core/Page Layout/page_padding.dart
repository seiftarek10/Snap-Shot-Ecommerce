import 'package:flutter/material.dart';

class AppPagePadding extends StatelessWidget {
  const AppPagePadding({super.key, required this.child, this.vertical});
  final Widget child;
  final double? vertical;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical ?? 40, horizontal: 20),
      child: child,
    );
  }
}
