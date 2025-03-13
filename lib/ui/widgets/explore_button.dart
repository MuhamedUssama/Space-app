import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class ExploreButton extends StatelessWidget {
  final String title;
  final Function function;
  const ExploreButton({super.key, required this.title, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      child: FilledButton(
        onPressed: () {
          function();
        },
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.red,
          padding: const EdgeInsets.all(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: AppTextStyles.font20White600),
            const Icon(
              Icons.arrow_forward,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
