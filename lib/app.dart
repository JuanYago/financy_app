import "package:financy_app/features/onboarding/onboarding_page.dart";
import "package:financy_app/features/splash/splash_page.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";



void main() {
    debugPaintSizeEnabled = true;

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingPage(
      ),
    );
  }
}