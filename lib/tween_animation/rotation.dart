import 'package:flutter/material.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';
import 'dart:math' as math;

class Rotation extends StatefulWidget {
  const Rotation({Key key}) : super(key: key);

  static final Widget rectangleBar = Align(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        height: 300,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
      ),
    ),
  );

  static double endValue = 2 * math.pi;

  @override
  _RotationState createState() => _RotationState();
}

class _RotationState extends State<Rotation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotation'),
      ),
      body: centerItemWithBottomButton(
          centerItem: Stack(
            children: <Widget>[
              Align(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: Rotation.endValue),
                duration: Duration(seconds: 3),
                child: Rotation.rectangleBar,
                builder: (_, double angle, child) {
                  return Transform.rotate(angle: angle, child: child);
                },
              ),
            ],
          ),
          button: IconButton(
            icon: Icon(Icons.replay),
            onPressed: () {
              setState(() {
                Rotation.endValue =
                    Rotation.endValue == 2 * math.pi ? 0 : 2 * math.pi;
              });
            },
          )),
    );
  }
}
