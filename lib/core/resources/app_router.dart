import 'package:artify/core/resources/app_routes.dart';
import 'package:artify/features/home/presentation/views/detail_view.dart';
import 'package:artify/features/home/presentation/views/home_view.dart';
import 'package:artify/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.onboarding,
    routes: [
      GoRoute(
        path: AppRoutes.onboarding,
        name: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: AppRoutes.detail,
        name: AppRoutes.detail,
        builder: (context, state) => const DetailView(),
      ),
      GoRoute(
        path: AppRoutes.collection,
        name: AppRoutes.collection,
        builder:
            (context, state) =>
                const Scaffold(body: Center(child: Text('Collection'))),
      ),
    ],
  );
}
