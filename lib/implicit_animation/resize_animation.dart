import 'dart:math';

import 'package:flutter/material.dart';

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: _randomCurveStyle(),
              height: _height,
              width: _width,
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(_radius),
              ),
              child: FlutterLogo(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              color: Theme.of(context).primaryColorDark,
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              onPressed: _resizeContainer,
            ),
          )
        ]),
      ),
    );
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

  Curve _randomCurveStyle() {
    final List<Curve> availableCurves = [
      Curves.bounceInOut,
      Curves.bounceOut,
      Curves.decelerate,
      Curves.ease,
      Curves.easeIn,
      Curves.easeInBack,
      Curves.easeInCirc,
      Curves.easeInExpo,
      Curves.easeInOutSine,
      Curves.easeInOutQuint,
      Curves.easeInToLinear,
      Curves.elasticInOut,
      Curves.fastLinearToSlowEaseIn,
      Curves.fastOutSlowIn,
      Curves.easeOutQuad,
      Curves.slowMiddle,
    ];
    Random random = Random();
    return availableCurves.elementAt(random.nextInt(availableCurves.length));
  }
}
