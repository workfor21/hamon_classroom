import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = "DashboardScreen";
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Placeholder(),
      ),
    );
  }
}