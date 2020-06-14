import 'package:flutter/material.dart';
import 'package:flutter_animation/common/list_of_curves.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';

class TextStyleAnimation extends StatefulWidget {
  const TextStyleAnimation({Key key}) : super(key: key);

  @override
  _TextStyleAnimationState createState() => _TextStyleAnimationState();
}

class _TextStyleAnimationState extends State<TextStyleAnimation> {
  TextStyle _textStyle = TextStyle(color: Colors.red, fontSize: 30);
  Duration _animatedDuration = Duration(seconds: 1);
  bool _isChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Style Animation'),
      ),
      body: centerItemWithBottomButton(
          centerItem: AnimatedDefaultTextStyle(
            curve: randomCurveStyle(),
            duration: _animatedDuration,
            child: Text('Hello Flutter'),
            style: _textStyle,
          ),
          button: IconButton(
            icon: Icon(Icons.replay),
            onPressed: () {
              setState(() {
                _isChanged
                    ? _textStyle = TextStyle(
                        color: Colors.amber,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      )
                    : _textStyle = TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                      );
                _isChanged ? _isChanged = false : _isChanged = true;
              });
            },
          )),
    );
  }
}
