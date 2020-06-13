import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';

class TrafficLight extends StatefulWidget {
  TrafficLight({Key key}) : super(key: key);

  @override
  _TrafficLightState createState() => _TrafficLightState();
}

class _TrafficLightState extends State<TrafficLight> {
  Color _offShadowColor = Colors.grey;
  Color _offColor = Colors.black;
  Duration _duration = Duration(milliseconds: 500);
  double _elevation = 30;

  var _light1 = Colors.red;
  var _light2 = Colors.orange;
  var _light3 = Colors.green;

  var _isFirstOn = false;
  var _isSecondOn = false;
  var _isThridOn = false;

  var _enableButton = true;

  final _child = Container(
    height: 80,
    width: 80,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traffic Light'),
      ),
      body: centerItemWithBottomButton(
        centerItem: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Align(
                child: AnimatedPhysicalModel(
                  shadowColor: _offShadowColor,
                  duration: _duration,
                  elevation: _elevation,
                  shape: BoxShape.circle,
                  color: _isFirstOn ? _light1 : _offColor,
                  child: _child,
                ),
              ),
              Align(
                child: AnimatedPhysicalModel(
                  shadowColor: _offShadowColor,
                  duration: _duration,
                  elevation: _elevation,
                  shape: BoxShape.circle,
                  color: _isSecondOn ? _light2 : _offColor,
                  child: _child,
                ),
              ),
              Align(
                child: AnimatedPhysicalModel(
                  shadowColor: _offShadowColor,
                  duration: _duration,
                  elevation: _elevation,
                  shape: BoxShape.circle,
                  color: _isThridOn ? _light3 : _offColor,
                  child: _child,
                ),
              ),
            ],
          ),
        ),
        button: IconButton(
          icon: Icon(Icons.replay),
          onPressed: _enableButton ? _startTrafficLight : null,
        ),
      ),
    );
  }

  void _startTrafficLight() {
    _enableButton = false;
    if (_isFirstOn && _isSecondOn && _isThridOn) {
      setState(() {
        _isFirstOn = false;
        _isSecondOn = false;
        _isThridOn = false;
      });
    }

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_isFirstOn && _isSecondOn && _isThridOn) {
          print('all are on');
          timer.cancel();
        }
        if (!_isFirstOn) {
          print('turing 1');
          _isFirstOn = true;
        } else if (!_isSecondOn) {
          print('turing 2');
          _isSecondOn = true;
        } else if (!_isThridOn) {
          print('turing 3');
          _isThridOn = true;
        } else {
          _enableButton = true;
        }
      });
    });
  }
}
