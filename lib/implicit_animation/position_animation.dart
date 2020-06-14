import 'package:flutter/material.dart';
import 'package:flutter_animation/common/list_of_curves.dart';
import 'package:flutter_animation/common/random_numbers.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';

class PositionAnimation extends StatefulWidget {
  const PositionAnimation({Key key}) : super(key: key);

  @override
  _PositionAnimationState createState() => _PositionAnimationState();
}

class _PositionAnimationState extends State<PositionAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Position Animation'),
      ),
      body: centerItemWithBottomButton(
        centerItem: Stack(
          children: <Widget>[
            AnimatedPositioned(
              curve: randomCurveStyle(),
              top: randomPositionValue(),
              right: randomPositionValue(),
              bottom: randomPositionValue(),
              left: randomPositionValue(),
              duration: Duration(seconds: 1),
              child: FlutterLogo(),
            ),
          ],
        ),
        button: IconButton(
          icon: Icon(Icons.replay),
          onPressed: () {
            setState(() {});
          },
        ),
      ),
    );
  }
}
