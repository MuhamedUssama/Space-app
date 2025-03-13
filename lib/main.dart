import 'package:flutter/material.dart';
import 'package:space_app/ui/home_screen.dart';

import 'ui/on_boarding_screen.dart';
import 'ui/planet_details_screen.dart';

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
        HomeScreen.routeName: (_) => const HomeScreen(),
        PlanetDetailsScreen.routeName: (_) => const PlanetDetailsScreen(),
      },
      initialRoute: OnBoardingScreen.routeName,
    );
  }
}
