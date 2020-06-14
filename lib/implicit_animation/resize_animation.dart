import 'package:flutter/material.dart';
import 'package:flutter_animation/common/list_of_curves.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';

class ResizeAnimation extends StatefulWidget {
  const ResizeAnimation({Key key}) : super(key: key);

  @override
  _ResizeAnimationState createState() => _ResizeAnimationState();
}

class _ResizeAnimationState extends State<ResizeAnimation> {
  final double _maxHeight = 400;
  final double _maxWidth = 400;
  final double _maxRadius = 40;
  final double _maxPadding = 200;

  final double _minHeight = 200;
  final double _minWidth = 200;
  final double _minRadius = 20;
  final double _minPadding = 50;

  double _height;
  double _width;
  double _radius;
  double _padding;
  Color _color;

  @override
  void initState() {
    _height = _minHeight;
    _width = _minWidth;
    _radius = _minRadius;
    _padding = _minPadding;
    _color = Colors.teal[500];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Resize Animation'),
        ),
        body: centerItemWithBottomButton(
            centerItem: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: randomCurveStyle(),
              height: _height,
              width: _width,
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(_radius),
              ),
              child: FlutterLogo(),
            ),
            button: IconButton(
              icon: Icon(Icons.replay),
              onPressed: _resizeContainer,
            )));
  }

  void _resizeContainer() {
    setState(() {
      _height == _minHeight ? _height = _maxHeight : _height = _minHeight;
      _width == _minWidth ? _width = _maxWidth : _width = _minWidth;
      _radius == _minRadius ? _radius = _maxRadius : _radius = _minRadius;
      _padding == _minPadding ? _padding = _maxPadding : _padding = _minPadding;
      _color == Colors.teal[500]
          ? _color = Colors.amber[100]
          : _color = Colors.teal[500];
    });
  }
}
