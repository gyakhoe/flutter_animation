import 'package:flutter/material.dart';
import 'package:flutter_animation/common/list_of_curves.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';

class CrossFadeLogoAnimation extends StatefulWidget {
  const CrossFadeLogoAnimation({Key key}) : super(key: key);

  @override
  _CrossFadeLogoAnimationState createState() => _CrossFadeLogoAnimationState();
}

class _CrossFadeLogoAnimationState extends State<CrossFadeLogoAnimation> {
  bool _isFirstShowing = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Fade Animation'),
      ),
      body: centerItemWithBottomButton(
        centerItem: AnimatedCrossFade(
          duration: Duration(seconds: 1),
          firstCurve: randomCurveStyle(),
          secondCurve: randomCurveStyle(),
          firstChild: FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 300,
          ),
          secondChild: FlutterLogo(
            style: FlutterLogoStyle.stacked,
            size: 300,
          ),
          crossFadeState: _isFirstShowing
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
        button: IconButton(
          icon: Icon(
            Icons.replay,
            size: 40,
          ),
          onPressed: () {
            setState(() {
              _isFirstShowing
                  ? _isFirstShowing = false
                  : _isFirstShowing = true;
            });
          },
        ),
      ),
    );
  }
}
