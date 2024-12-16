import 'package:flutter/material.dart';
import 'package:video_meets_app/utils/constants/asset_constants.dart';
import 'package:video_meets_app/utils/constants/color_constants.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class NestedUserImages extends StatelessWidget {
  const NestedUserImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: ResponsiveUtil.width(context, .2)),
      width: ResponsiveUtil.width(context, .4),
      height: ResponsiveUtil.width(context, .4),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: ResponsiveUtil.width(context, .4),
            height: ResponsiveUtil.width(context, .4),
            decoration: BoxDecoration(
              color: AppColors.accent,
              borderRadius: BorderRadius.circular(22),
            ),
            padding: const EdgeInsets.all(7),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                AssetConstants.cardUserImage4,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            right: -20,
            child: Container(
              width: ResponsiveUtil.width(context, .15),
              height: ResponsiveUtil.width(context, .15),
              decoration: BoxDecoration(
                color: AppColors.backgroundLight,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Image.asset(
                  AssetConstants.cardUserImage5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
