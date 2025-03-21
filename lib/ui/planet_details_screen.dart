import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import '../core/theme/app_colors.dart';
import '../core/theme/app_text_styles.dart';
import '../models/planet_model.dart';
import 'widgets/details_screen_header_widget.dart';

class PlanetDetailsScreen extends StatelessWidget {
  static const String routeName = '/planetDetails';
  const PlanetDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Planet planet = ModalRoute.of(context)!.settings.arguments as Planet;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          DetailsScreenHeaderWidget(name: planet.name, title: planet.title),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Hero(
                    tag: planet.title,
                    child: ModelViewer(
                      backgroundColor: AppColors.black,
                      src: 'assets/models/${planet.model}',
                      ar: false,
                      autoRotate: false,
                      autoPlay: false,
                    ),
                  ),
                ),
                const Text('About', style: AppTextStyles.font24White700Grotesk),
                const SizedBox(height: 8),
                Text(planet.about, style: AppTextStyles.font16White300Grotesk),
                const SizedBox(height: 16),
                Text(
                  'Distance from Sun (km) : ${planet.distanceFromSun}',
                  style: AppTextStyles.font16White700Grotesk,
                ),
                const SizedBox(height: 8),
                Text(
                  'Orbital Period (Earth years): ${planet.orbitalPeriod}',
                  style: AppTextStyles.font16White700Grotesk,
                ),
                const SizedBox(height: 8),
                Text(
                  'Radius (km): ${planet.radius}',
                  style: AppTextStyles.font16White700Grotesk,
                ),
                const SizedBox(height: 8),
                Text(
                  'Mass (km): ${planet.mass}',
                  style: AppTextStyles.font16White700Grotesk,
                ),
                const SizedBox(height: 8),
                Text(
                  'Gravity (m/s²): ${planet.gravity}',
                  style: AppTextStyles.font16White700Grotesk,
                ),
                const SizedBox(height: 8),
                Text(
                  'Surface Area (km²) : ${planet.surfaceArea}',
                  style: AppTextStyles.font16White700Grotesk,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
