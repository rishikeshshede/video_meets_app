import 'package:get/get.dart';
import 'package:video_meets_app/features/onboarding/presentation/controllers/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}
