import 'package:flutter/material.dart';

import 'ui/on_boarding_screen.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space App',
      debugShowCheckedModeBanner: false,
      routes: {
        OnBoardingScreen.routeName: (_) => const OnBoardingScreen(),
      },
      initialRoute: OnBoardingScreen.routeName,
    );
  }
}
