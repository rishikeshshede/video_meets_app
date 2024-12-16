import 'package:flutter/material.dart';
import 'package:video_meets_app/utils/responsive_util.dart';

class BackgroundLines extends StatelessWidget {
  const BackgroundLines({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DrawBackgroundLines(),
      child: SizedBox(
        width: ResponsiveUtil.width(context, 1),
        height: ResponsiveUtil.height(context, 1),
      ),
    );
  }
}

class DrawBackgroundLines extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xFFEAC2A2).withOpacity(.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    WaveLinesClipper clipper = WaveLinesClipper();
    Path wavePath1 = clipper.getPath(size);
    canvas.drawPath(wavePath1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class WaveLinesClipper {
  Path getPath(Size size) {
    Path path = Path();

    // First curved line
    path.moveTo(0, size.height * 0.44);
    path.quadraticBezierTo(
      size.width * 0.45,
      size.height * 0.55,
      size.width * 0.5,
      size.height * 1,
    );

    // Second curved line
    path.moveTo(size.width * .4, 0);
    path.quadraticBezierTo(
      -size.width * 0.06,
      size.height * 0.25,
      size.width,
      size.height * 0.75,
    );

    return path;
  }
}
