import 'package:flutter/material.dart';
import 'package:space_app/core/theme/app_colors.dart';
import 'package:space_app/ui/home_screen.dart';

import '../core/theme/app_text_styles.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "/onBoardingScreen";
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Image.asset('assets/images/on_boarding_image.png'),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
              child: FilledButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                },
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.red,
                  padding: const EdgeInsets.all(16),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Explore', style: AppTextStyles.font20White600),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
