import 'package:flutter/material.dart';
import 'package:hamon_classroom/presentation/dashboard/ui/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context, DashboardScreen.routeName,(route) => false,);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'YC',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Your Classroom',
                style: TextStyle(
                    fontSize: 13, letterSpacing: 1, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
