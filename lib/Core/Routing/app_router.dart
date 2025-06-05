import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shot/Core/Routing/base_route.dart';
import 'package:snap_shot/Features/On%20Boarding/on_boarding_view.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return baseRoute(context, state, const OnBoardingView());
      },
    ),
  ],
);
