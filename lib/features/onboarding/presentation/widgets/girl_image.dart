import 'package:flutter/material.dart';
import 'package:video_meets_app/utils/constants/asset_constants.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class GirlImage extends StatelessWidget {
  const GirlImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Image.asset(
        AssetConstants.womanImage1,
        width: ResponsiveUtil.width(context, 1),
        height: ResponsiveUtil.height(context, .7),
        fit: BoxFit.cover,
      ),
    );
  }
}
