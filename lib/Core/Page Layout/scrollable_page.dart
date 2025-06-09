import 'package:flutter/material.dart';

class AppScrollablePage extends StatelessWidget {
  const AppScrollablePage({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: child,
    );
  }
}
