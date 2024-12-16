import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_meets_app/features/onboarding/presentation/controllers/onboarding_controller.dart';
import 'package:video_meets_app/themes/text_theme.dart';
import 'package:video_meets_app/utils/constants/color_constants.dart';
import 'package:video_meets_app/utils/constants/size_constants.dart';
import 'package:video_meets_app/utils/constants/text_constants.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class JoinNowButton extends GetWidget<OnboardingController> {
  const JoinNowButton({super.key});
  @override
  Widget build(BuildContext context) {
    controller.buttonWidth.value = ResponsiveUtil.width(context, .55);
    return Center(
      child: Container(
        width: controller.buttonWidth.value,
        height: controller.buttonHeight.value,
        decoration: BoxDecoration(
          color: AppColors.success,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                TextConstants.joinNow.toUpperCase(),
                style: AppTextTheme.button(context).copyWith(
                  fontSize: 15.w(context),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Swipeable Circle with Arrow
            Obx(
              () => Positioned(
                top: 2.5,
                left: controller.dragPosition.value + 2.5,
                child: GestureDetector(
                  onHorizontalDragUpdate: controller.onHorizontalDragUpdate,
                  onHorizontalDragEnd: controller.onHorizontalDragEnd,
                  child: Container(
                    width: controller.buttonHeight.value - 5,
                    height: controller.buttonHeight.value - 5,
                    decoration: const BoxDecoration(
                      color: AppColors.backgroundLight,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: AppColors.success,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
