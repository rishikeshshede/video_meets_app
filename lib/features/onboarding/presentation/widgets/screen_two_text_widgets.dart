import 'package:flutter/material.dart';
import 'package:video_meets_app/themes/text_theme.dart';
import 'package:video_meets_app/utils/constants/color_constants.dart';
import 'package:video_meets_app/utils/constants/size_constants.dart';
import 'package:video_meets_app/utils/constants/text_constants.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TextConstants.conenctShareAnywhere,
      textAlign: TextAlign.center,
      style: AppTextTheme.titleLarge(context).copyWith(
        fontSize: 32.w(context),
        color: AppColors.accent,
        fontWeight: FontWeight.bold,
        height: 1.2,
      ),
    );
  }
}

class Tagline extends StatelessWidget {
  const Tagline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TextConstants.tagline,
      textAlign: TextAlign.center,
      style: AppTextTheme.bodySecondary(context).copyWith(),
    );
  }
}
