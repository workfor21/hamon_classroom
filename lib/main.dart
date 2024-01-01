import 'package:flutter/material.dart';
import 'package:hamon_classroom/core/routes/routes.dart';
import 'package:hamon_classroom/presentation/dashboard/ui/dashboard_screen.dart';
import 'package:hamon_classroom/presentation/spashScreen/ui/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}