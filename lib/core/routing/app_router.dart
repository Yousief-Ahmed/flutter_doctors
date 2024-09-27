import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_doctors/core/di/dependecy_injection.dart';
import 'package:flutter_doctors/core/routing/routes.dart';
import 'package:flutter_doctors/features/home/ui/home_screen.dart';
import 'package:flutter_doctors/features/login/logic/login_cubit.dart';
import 'package:flutter_doctors/features/onboarding/onboarding_screen.dart';
import 'package:flutter_doctors/features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen :
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );
      case Routes.loginScreen :
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      default :
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text("No route defined for ${settings.name}"),
                ),
              ),
        );
    }
  }
}
