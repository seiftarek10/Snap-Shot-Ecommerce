import 'package:flutter/material.dart';

void main() {
  runApp(const SnapShotApp());
}

class SnapShotApp extends StatelessWidget {
  const SnapShotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('SnapShot App'),
        ),
      ),
    );
  }
}
