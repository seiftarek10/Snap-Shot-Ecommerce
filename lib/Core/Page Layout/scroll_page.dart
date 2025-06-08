import 'package:flutter/material.dart';

class AppScrollingPage extends StatelessWidget {
  const AppScrollingPage({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: child,
    );
  }
}
