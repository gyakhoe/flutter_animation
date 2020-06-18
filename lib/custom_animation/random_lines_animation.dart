import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RandomLinesAnimation extends StatefulWidget {
  const RandomLinesAnimation({Key key}) : super(key: key);

  @override
  _RandomLinesAnimationState createState() => _RandomLinesAnimationState();
}

class _RandomLinesAnimationState extends State<RandomLinesAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Lines')),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.teal[300],
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CustomPaint(
              size: Size(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height),
              foregroundPainter:
                  AnimatedLinePainter(animation: _animationController),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedLinePainter extends CustomPainter {
  final Animation<double> animation;

  AnimatedLinePainter({this.animation}) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(50, 50);
    final p2 = Offset(250, 150);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4;

    final p3 = Offset(100, 100);
    final p4 = Offset(300, 300);
    final paint1 = Paint()
      ..color = Colors.black
      ..strokeWidth = 4;

    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(p3, p4, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
