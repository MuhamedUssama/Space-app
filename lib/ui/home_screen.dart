import 'package:flutter/material.dart';
import 'package:space_app/core/theme/app_colors.dart';
import 'package:space_app/core/theme/app_text_styles.dart';
import 'package:space_app/models/planet_model.dart';

import 'planet_details_screen.dart';
import 'widgets/explore_button.dart';
import 'widgets/header_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController controller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
    controller.addListener(() {
      currentPage = controller.page!.round();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (page) {
                setState(() {});
              },
              itemCount: Planet.planets.length,
              itemBuilder: (context, index) {
                return Hero(
                  tag: Planet.planets[index].title,
                  child: Image.asset(
                    "assets/images/${Planet.planets[index].image}",
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.animateToPage(
                    (currentPage - 1),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.white,
                  backgroundColor: AppColors.red,
                  shape: const CircleBorder(),
                ),
                child: const Icon(Icons.arrow_back),
              ),
              Text(
                Planet.planets[currentPage].name,
                style: AppTextStyles.font24White700Grotesk,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.animateToPage(
                    (currentPage + 1),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.white,
                  backgroundColor: AppColors.red,
                  shape: const CircleBorder(),
                ),
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
          const SizedBox(height: 50),
          ExploreButton(
            title: 'Explore ${Planet.planets[currentPage].name}',
            function: () {
              Navigator.pushNamed(
                context,
                PlanetDetailsScreen.routeName,
                arguments: Planet.planets[currentPage],
              );
            },
          ),
        ],
      ),
    );
  }
}
