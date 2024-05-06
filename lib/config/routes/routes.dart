import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../Views/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashview:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case RoutesName.loginview:
        return MaterialPageRoute(builder: (context) => const LoginVIew());
      case RoutesName.homeview:
        return MaterialPageRoute(builder: (context) => const HomeView());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('No route generated'),
            ),
          );
        });
    }
  }
}
