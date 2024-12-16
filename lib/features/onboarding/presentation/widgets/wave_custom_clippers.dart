import 'package:flutter/material.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * .05,
      -size.height * 0.1,
      size.width * 0.16,
      size.height * .2,
    );

    path.quadraticBezierTo(
      size.width * 0.26,
      size.height * 0.5,
      size.width * 0.36,
      size.height * .2,
    );

    path.quadraticBezierTo(
      size.width * 0.44,
      -size.height * .05,
      size.width * 0.55,
      size.height * 0.3,
    );

    path.quadraticBezierTo(
      size.width * 0.64,
      size.height * 0.5,
      size.width * 0.75,
      size.height * 0.22,
    );

    path.quadraticBezierTo(
      size.width * 0.9,
      -size.height * 0.15,
      size.width,
      size.height * 0.1,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BottomWaveClipperLight extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.4);

    path.quadraticBezierTo(
      size.width * .15,
      -size.height * 0.1,
      size.width * 0.28,
      size.height * .2,
    );

    path.quadraticBezierTo(
      size.width * 0.42,
      size.height * 0.5,
      size.width * 0.55,
      size.height * .2,
    );

    path.quadraticBezierTo(
      size.width * 0.75,
      -size.height * 0.2,
      size.width,
      size.height * 0.3,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveLines extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // First wave line
    Paint paint1 = Paint()
      ..color = const Color(0xFF6959FC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;

    // Second wave line
    Paint paint2 = Paint()
      ..color = const Color(0xFF978DF1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;

    // Clipper for generating paths
    WaveLinesClipper waveLinesClipper = WaveLinesClipper();

    // Draw the first wave line
    Path wavePath1 = waveLinesClipper.getFirstWavePath(size);
    canvas.drawPath(wavePath1, paint1);

    // Draw the second wave line
    Path wavePath2 = waveLinesClipper.getSecondWavePath(size);
    canvas.drawPath(wavePath2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class WaveLinesClipper {
  Path getFirstWavePath(Size size) {
    Path path = Path();

    // First wave line
    path.moveTo(0, size.height * 0.3);
    path.quadraticBezierTo(
      size.width * 0.2,
      -size.height * 0.1,
      size.width * 0.4,
      size.height * 0.3,
    );
    path.quadraticBezierTo(
      size.width * 0.55,
      size.height * 0.5,
      size.width * 0.65,
      size.height * 0.25,
    );
    path.quadraticBezierTo(
      size.width * 0.8,
      -size.height * 0.1,
      size.width,
      size.height * 0.2,
    );

    return path;
  }

  Path getSecondWavePath(Size size) {
    Path path = Path();

    // Second wave line
    path.moveTo(0, size.height * 0.1);
    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.5,
      size.width * 0.22,
      size.height * 0.25,
    );
    path.quadraticBezierTo(
      size.width * 0.37,
      -size.height * 0.1,
      size.width * 0.57,
      size.height * 0.35,
    );
    path.quadraticBezierTo(
      size.width * 0.69,
      size.height * 0.6,
      size.width * .8,
      size.height * 0.25,
    );
    path.quadraticBezierTo(
      size.width * 0.9,
      -size.height * 0.1,
      size.width,
      0,
    );

    return path;
  }
}
