import 'package:flutter/material.dart';
import 'package:video_meets_app/utils/constants/asset_constants.dart';
import 'package:video_meets_app/utils/constants/color_constants.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class CallControlButtonWidget extends StatelessWidget {
  const CallControlButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ResponsiveUtil.height(context, .18),
      child: Container(
        height: ResponsiveUtil.height(context, .12),
        width: ResponsiveUtil.width(context, 1),
        padding:
            EdgeInsets.symmetric(horizontal: ResponsiveUtil.width(context, .2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: ResponsiveUtil.width(context, .14),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.backgroundLight,
              ),
              padding: const EdgeInsets.all(13),
              child: Image.asset(
                AssetConstants.videoCamFilledBlackIcon,
                fit: BoxFit.contain,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: ResponsiveUtil.width(context, .16),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.error,
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    AssetConstants.phoneDownFilledWhiteIcon,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Container(
              width: ResponsiveUtil.width(context, .14),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.backgroundDark,
              ),
              padding: const EdgeInsets.all(17),
              child: Image.asset(
                AssetConstants.micOffFilledWhiteIcon,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
