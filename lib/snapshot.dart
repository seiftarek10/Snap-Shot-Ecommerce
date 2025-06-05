import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Routing/app_router.dart';

class SnapShotApp extends StatelessWidget {
  const SnapShotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
