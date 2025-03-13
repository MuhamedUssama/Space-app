import 'package:flutter/material.dart';
import 'package:space_app/core/theme/app_colors.dart';

import '../core/theme/app_text_styles.dart';
import '../core/utils/app_assets.dart';
import 'home_screen.dart';
import 'widgets/explore_button.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "/onBoardingScreen";
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Image.asset(AppAssets.onBoardingImage),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Explore\nThe\nUniverse',
                style: AppTextStyles.font48White900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ExploreButton(
              title: 'Explore',
              function: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
          )
        ],
      ),
    );
  }
}
