import 'package:flutter/widgets.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/bg_shape_curve.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/call_control_buttons_widget.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/girl_image.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/user_details_widget.dart';
import 'package:video_meets_app/utils/constants/asset_constants.dart';
import 'package:video_meets_app/utils/constants/color_constants.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEAC2A2),
      child: Stack(
        children: [
          ClipPath(
            clipper: BgShapeCustomClipper(),
            child: Container(
              width: ResponsiveUtil.width(context, 1),
              height: ResponsiveUtil.height(context, .33),
              color: AppColors.backgroundLight,
            ),
          ),
          const GirlImage(),
          ...floatingUserCards(context),
          const CallControlButtonWidget(),
        ],
      ),
    );
  }

  List<Widget> floatingUserCards(BuildContext context) {
    return [
      Positioned(
        left: -15,
        top: ResponsiveUtil.height(context, .27),
        child: const UserDetailsCard(
          backgroundImage: AssetConstants.cardUserImage1,
          name: "John Menon",
          rotationAngle: -8.0,
        ),
      ),
      Positioned(
        left: ResponsiveUtil.width(context, .27),
        top: ResponsiveUtil.height(context, .1),
        child: const UserDetailsCard(
          backgroundImage: AssetConstants.cardUserImage2,
          name: "Anita Sharma",
          rotationAngle: 2,
          isBlur: true,
        ),
      ),
      Positioned(
        right: -10,
        top: ResponsiveUtil.height(context, .2),
        child: const UserDetailsCard(
          backgroundImage: AssetConstants.cardUserImage3,
          name: "Rocky Bhai",
          rotationAngle: 13.5,
        ),
      )
    ];
  }
}
