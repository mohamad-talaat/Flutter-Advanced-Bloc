import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/routing/routes.dart';
import 'package:flutter_advanced_omar_ahmed/features/onboarding/ui/onboarding.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      // case AppRoutes.login:
      //   return MaterialPageRoute(builder: (context) => const LoginScreen(),);
      // case AppRoutes.splash:
      //   return MaterialPageRoute(builder: (context) => const OnboardingScreen(),);

      default:
        return MaterialPageRoute(
          builder: (context) => const Text(
            "No Route Found",
            style: TextStyle(fontSize: 28, color: Colors.red),
          ),
        );
    }
  }
}
 
