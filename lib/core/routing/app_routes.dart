import 'package:flutter/material.dart';
import 'package:plant_disease_app/core/routing/raoutes.dart';
import 'package:plant_disease_app/features/on_boarding_screen/ui/on_boarding_screen.dart';

class AppRoute {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnboardingScreen());
      /*case '/login':
        return MaterialPageRoute(builder: (context) => LoginPage());
*/
      default:
        return MaterialPageRoute(
            builder: (_) => Center(
                  child: Text('No Route defined for ${settings.name}'),
                ));
    }
  }
}
