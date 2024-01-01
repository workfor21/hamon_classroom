import 'package:flutter/material.dart';
import 'package:hamon_classroom/presentation/dashboard/ui/dashboard_screen.dart';
import 'package:hamon_classroom/presentation/spashScreen/ui/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // view order-execution details screen
    switch (routeSettings.name) { 
      case DashboardScreen.routeName:
        {
          return _route(DashboardScreen(), routeSettings);
        }
      
      case SplashScreen.routeName:
        {
          return _route(SplashScreen(), routeSettings);
        }

      default:
        {
          return _route(SplashScreen(), routeSettings);
        }
    }
  }
  static Route _route(Widget widget, RouteSettings routeSettings) {
    return MaterialPageRoute(
      builder: (_) => widget,
      settings: routeSettings,
    );
  }
}
