import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/bg_lines.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/join_now_button.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/message_box_widget.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/nested_user_images.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/screen_two_text_widgets.dart';
import 'package:video_meets_app/utils/constants/color_constants.dart';
import 'package:video_meets_app/utils/constants/space_utils.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundLight,
      width: ResponsiveUtil.width(context, 1),
      height: ResponsiveUtil.height(context, 1),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const BackgroundLines(),
          Positioned(
            top: ResponsiveUtil.height(context, .1),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeadingText(),
                VerticalSpace(space: 15),
                Tagline(),
                VerticalSpace(space: 30),
                NestedUserImages(),
                VerticalSpace(space: 40),
                MessageBox(),
              ],
            ),
          ),
          Positioned(
            bottom: ResponsiveUtil.height(context, .15),
            child: const JoinNowButton(),
          ),
        ],
      ),
    );
  }
}
