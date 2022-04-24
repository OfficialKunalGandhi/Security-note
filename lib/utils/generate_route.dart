import 'package:flutter/material.dart';
import 'package:security_notes/screnns/home_screen.dart';
import 'package:security_notes/screnns/login_screen.dart';
import 'package:security_notes/screnns/register_screen.dart';
import 'package:security_notes/screnns/splash_screen.dart';
import 'package:security_notes/utils/route.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
