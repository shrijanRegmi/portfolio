import 'package:flutter/material.dart';
import 'package:shrijan/features/home/views/screens/home_screen.dart';
import 'package:shrijan/features/shared/views/screens/app_wrapper.dart';

class AppRouter {
  /// This is the main route generator for the app.
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppWrapper.route:
        return buildRoute(
          settings: settings,
          screen: const AppWrapper(),
        );
      case HomeScreen.route:
        return buildRoute(
          settings: settings,
          screen: const HomeScreen(),
        );
      default:
        return buildRoute(
          settings: settings,
          screen: const AppWrapper(),
        );
    }
  }

  /// This is a helper method to build routes.
  static Route buildRoute({
    required RouteSettings settings,
    required Widget screen,
  }) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => screen,
    );
  }
}
