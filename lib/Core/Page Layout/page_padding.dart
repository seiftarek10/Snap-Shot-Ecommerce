import 'package:flutter/material.dart';

class AppPagePadding extends StatelessWidget {
  const AppPagePadding({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: child,
    );
  }
}
