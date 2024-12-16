import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:video_meets_app/themes/text_theme.dart';
import 'package:video_meets_app/utils/constants/color_constants.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class UserDetailsCard extends StatelessWidget {
  final String backgroundImage;
  final String name;
  final double rotationAngle;
  final bool isBlur;

  const UserDetailsCard({
    super.key,
    required this.backgroundImage,
    required this.name,
    required this.rotationAngle,
    this.isBlur = false,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotationAngle * (3.14159265359 / 180),
      child: Container(
        height: ResponsiveUtil.height(context, .16),
        width: ResponsiveUtil.width(context, .28),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 15,
              spreadRadius: 1,
              offset: const Offset(-3, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                if (isBlur)
                  Expanded(
                    flex: 5,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                      child: Container(
                        height: ResponsiveUtil.width(context, .14),
                        width: ResponsiveUtil.width(context, .14),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(backgroundImage),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (!isBlur) const Spacer(flex: 5),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: AppColors.accent,
                    width: ResponsiveUtil.width(context, .28),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      name,
                      style: AppTextTheme.small(context).copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textLight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
