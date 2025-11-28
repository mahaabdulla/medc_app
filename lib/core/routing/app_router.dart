import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medbok/core/di/dependency_injection.dart';
import 'package:medbok/core/routing/routes.dart';
import 'package:medbok/features/login/view_model/cubit/login_cubit.dart';
import 'package:medbok/features/login/views/login_screen.dart';
import 'package:medbok/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    // this arguments used to pass in any screen like this (arrgument ClassName)
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
          settings: settings,
        );

      case Routes.loginScree:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit >(),
            child: const LoginScreen(),
          ),
          settings: settings,
        );

      // case Routes.HomeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomeScreen(),
      //     settings: settings,
      //   );

      default:
        return _undefinedRoute(settings);
    }
  }

  Route<dynamic> _undefinedRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(child: Text('No Route Definde For: ${settings.name}')),
      ),
    );
  }
}
