import 'package:flutter/material.dart';
import 'package:quraankareem/core/routing/routes.dart';
import 'package:quraankareem/features/home/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.HomeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('404 - Not Found'))),
        );
    }
  }
}
