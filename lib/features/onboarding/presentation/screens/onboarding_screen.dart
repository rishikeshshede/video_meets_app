import 'package:flutter/material.dart';
import 'package:video_meets_app/features/onboarding/presentation/screens/onboarding_screen_one.dart';
import 'package:video_meets_app/features/onboarding/presentation/screens/onboarding_screen_two.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/bottom_wave_shape.dart';

class OnboardingScreen extends StatelessWidget {
  final _pageController = PageController();
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [OnboardingScreenOne(), OnboardingScreenTwo()],
          ),
          const WaveShape(),
        ],
      ),
    );
  }
}
