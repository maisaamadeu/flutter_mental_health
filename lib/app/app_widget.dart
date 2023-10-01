import 'package:flutter/material.dart';
import 'package:flutter_mental_health/app/screens/onboarding_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
    );
  }
}
