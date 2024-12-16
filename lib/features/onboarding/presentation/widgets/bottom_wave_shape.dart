import 'package:flutter/widgets.dart';
import 'package:video_meets_app/features/onboarding/presentation/widgets/wave_custom_clippers.dart';
import 'package:video_meets_app/utils/constants/color_constants.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class WaveShape extends StatelessWidget {
  const WaveShape({super.key});
  final double waveHeight = .11;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: BottomWaveClipperLight(),
            child: Container(
              width: ResponsiveUtil.width(context, 1),
              height: ResponsiveUtil.height(context, waveHeight),
              color: AppColors.accent.withOpacity(.45),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: BottomWaveClipper(),
            child: Container(
              width: ResponsiveUtil.width(context, 1),
              height: ResponsiveUtil.height(context, waveHeight),
              color: AppColors.accent,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: CustomPaint(
            painter: WaveLines(),
            child: SizedBox(
              width: ResponsiveUtil.width(context, 1),
              height: ResponsiveUtil.height(context, waveHeight),
            ),
          ),
        ),
      ],
    );
  }
}
