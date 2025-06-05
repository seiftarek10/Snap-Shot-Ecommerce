import 'package:flutter/material.dart';
import 'package:snap_shot/Features/On%20Boarding/on_boarding_view.dart';

void main() {
  runApp(const SnapShotApp());
}

class SnapShotApp extends StatelessWidget {
  const SnapShotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: OnBoardingView());
  }
}
