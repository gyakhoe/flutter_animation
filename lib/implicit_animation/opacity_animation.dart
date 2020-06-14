import 'package:flutter/material.dart';
import 'package:flutter_animation/common/list_of_curves.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';

class OpacityAnimation extends StatefulWidget {
  OpacityAnimation({Key key}) : super(key: key);

  @override
  _OpacityAnimationState createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
  Duration _duration = Duration(seconds: 1);
  double _opacityValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity'),
      ),
      body: centerItemWithBottomButton(
          centerItem: AnimatedOpacity(
            curve: randomCurveStyle(),
            opacity: _opacityValue,
            duration: _duration,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(50),
              color: Theme.of(context).primaryColor,
              child: FlutterLogo(),
            ),
          ),
          button: IconButton(
            color: Colors.white,
            icon: Icon(Icons.replay),
            onPressed: () {
              setState(() {
                _opacityValue == 0 ? _opacityValue = 1 : _opacityValue = 0;
              });
            },
          )),
    );
  }
}
