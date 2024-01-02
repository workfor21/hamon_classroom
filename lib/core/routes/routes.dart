import 'package:flutter/material.dart';
import 'package:hamon_classroom/presentation/classroom/ui/classroom_details_screen.dart';
import 'package:hamon_classroom/presentation/classroom/ui/classroom_screen.dart';
import 'package:hamon_classroom/presentation/dashboard/ui/dashboard_screen.dart';
import 'package:hamon_classroom/presentation/registration/ui/registration_screen.dart';
import 'package:hamon_classroom/presentation/spashScreen/ui/splash_screen.dart';
import 'package:hamon_classroom/presentation/students/ui/student_screen.dart';
import 'package:hamon_classroom/presentation/students/ui/student_details_screen.dart';
import 'package:hamon_classroom/presentation/subjects/ui/subject_details_screen.dart';
import 'package:hamon_classroom/presentation/subjects/ui/subject_details_screen.dart';
import 'package:hamon_classroom/presentation/subjects/ui/subject_screen.dart';
import 'package:hamon_classroom/presentation/subjects/ui/subject_screen.dart';

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

      case ClassroomScreen.routeName:
        {
          return _route(ClassroomScreen(), routeSettings);
        }

      case ClassroomDetailsScreen.routeName:
        {
          return _route(ClassroomDetailsScreen(), routeSettings);
        }

      case SubjectScreen.routeName:
        {
          return _route(SubjectScreen(), routeSettings);
        }

      case StudentScreen.routeName:
        {
          return _route(StudentScreen(), routeSettings);
        }

      case RegistrationScreen.routeName:
        {
          return _route(RegistrationScreen(), routeSettings);
        }

        case StudentDetailsScreen.routeName:
        {
          return _route(StudentDetailsScreen(), routeSettings);
        }

        case SubjectDetailsScreen.routeName:
        {
          return _route(SubjectDetailsScreen(), routeSettings);
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
