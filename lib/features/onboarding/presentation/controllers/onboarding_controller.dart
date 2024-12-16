import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  RxDouble dragPosition = 0.0.obs;
  RxDouble buttonWidth = 160.0.obs;
  RxDouble buttonHeight = 50.0.obs;

  void onHorizontalDragUpdate(DragUpdateDetails details) {
    dragPosition.value += details.delta.dx;
    dragPosition.value = dragPosition.value.clamp(
        0.0, buttonWidth.value - buttonHeight.value); // Restrict dragging
  }

  void onHorizontalDragEnd(DragEndDetails details) {
    if (dragPosition.value >= 120.0) {
      debugPrint("Button Swiped!");
    }

    // Take back to initial position
    dragPosition.value = 0.0;
  }
}
