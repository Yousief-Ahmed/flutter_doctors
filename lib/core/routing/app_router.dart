import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_doctors/core/routing/routes.dart';
import 'package:flutter_doctors/features/onboarding/onboarding_screen.dart';
import 'package:flutter_doctors/features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute (RouteSettings settings){
    switch (settings.name){
      case Routes.onBoardingScreen :
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );
      case Routes.loginScreen :
        return MaterialPageRoute(
          builder: (_) => LoginScreen() ,
        );
      default :
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text ("No route defined for ${settings.name}"),
              ),
            ) ,
        );
    }
  }
}
