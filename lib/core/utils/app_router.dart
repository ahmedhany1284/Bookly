import 'package:bookly/features/home/presentaion/views/home_view.dart';
import 'package:bookly/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView='/homeView';
  static const kSplashView='/';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kSplashView,
        builder: (BuildContext context, GoRouterState state) =>const SplashView(),
      ),

      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) =>const HomeView(),
      ),
    ],
  );
}