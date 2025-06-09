import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shot/Core/Routing/base_route.dart';
import 'package:snap_shot/Core/Routing/route_path.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Screens/forget_password_view.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Screens/sign_in_view.dart';
import 'package:snap_shot/Features/Authentication/Presentation/View/Screens/sign_up_view.dart';
import 'package:snap_shot/Features/Navigation%20Bar%20Controller/bottom_navigation_bar_body.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return baseRoute(context, state, const BottomNavigationBarBody());
      },
    ),
    GoRoute(
        path: RoutePath.signInView,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return baseRoute(context, state, const SignInView());
        }),
    GoRoute(
        path: RoutePath.signupView,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return baseRoute(context, state, const SignUpView());
        }),
    GoRoute(
        path: RoutePath.forgetPasswordView,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return baseRoute(context, state, const ForgetPasswordView());
        }),
    GoRoute(
        path: RoutePath.forgetPasswordView,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return baseRoute(context, state, const BottomNavigationBarBody());
        }),
  ],
);
