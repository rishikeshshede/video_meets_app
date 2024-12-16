import 'package:flutter/material.dart';
import 'package:video_meets_app/themes/text_theme.dart';
import 'package:video_meets_app/utils/constants/asset_constants.dart';
import 'package:video_meets_app/utils/constants/color_constants.dart';
import 'package:video_meets_app/utils/constants/size_constants.dart';
import 'package:video_meets_app/utils/constants/text_constants.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveUtil.width(context, .8),
      height: ResponsiveUtil.width(context, .25),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            left: ResponsiveUtil.width(context, .1),
            child: Container(
              height: ResponsiveUtil.width(context, .15),
              width: ResponsiveUtil.width(context, .6),
              padding: const EdgeInsets.fromLTRB(20, 15, 16, 6),
              decoration: BoxDecoration(
                color: AppColors.accentLight,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    TextConstants.dummyMessage1,
                    style: AppTextTheme.body(context),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        TextConstants.dummyMessage1Time,
                        style: AppTextTheme.bodySecondary(context)
                            .copyWith(fontSize: 10.w(context)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: ResponsiveUtil.width(context, .15),
            height: ResponsiveUtil.width(context, .15),
            decoration: BoxDecoration(
              color: AppColors.accent.withOpacity(.5),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.asset(
                AssetConstants.cardUserImage6,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: -8,
            left: ResponsiveUtil.width(context, .15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple[800],
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
              child: Text(
                "🔥56",
                style: AppTextTheme.extraSmall(context)
                    .copyWith(color: AppColors.textLight),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
