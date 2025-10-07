import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quraankareem/core/di/dependency_injection.dart';
import 'package:quraankareem/core/routing/routes.dart';
import 'package:quraankareem/features/home/logic/cubit/ayaat_cubit.dart';
import 'package:quraankareem/features/home/ui/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.HomeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AyaatCubit>(),
            child: const HomeScreen(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('404 - Not Found'))),
        );
    }
  }
}
