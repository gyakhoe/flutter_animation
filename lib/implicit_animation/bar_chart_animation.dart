import 'dart:math';

import 'package:flutter/material.dart';

class BarChartAnimation extends StatefulWidget {
  BarChartAnimation({Key key}) : super(key: key);

  @override
  _BarChartAnimationState createState() => _BarChartAnimationState();
}

class _BarChartAnimationState extends State<BarChartAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Chart Animation'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 300,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _verticalAnimatedBar(
                    barHeight: _randomBarHeight(),
                    barColor: Colors.blue[400],
                  ),
                  _verticalAnimatedBar(
                    barHeight: _randomBarHeight(),
                    barColor: Colors.red[400],
                  ),
                  _verticalAnimatedBar(
                    barHeight: _randomBarHeight(),
                    barColor: Colors.teal[400],
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _horizontalAnimatedBar(
                    barWidth: _randomBarHeight(),
                    barColor: Colors.yellow[400],
                  ),
                  _horizontalAnimatedBar(
                    barWidth: _randomBarHeight(),
                    barColor: Colors.purple[400],
                  ),
                  _horizontalAnimatedBar(
                    barWidth: _randomBarHeight(),
                    barColor: Colors.redAccent[400],
                  ),
                ],
              ),
            ),
            FlatButton(
              child: Icon(Icons.replay, color: Colors.white),
              color: Colors.blue,
              onPressed: _randomizeBarHeight,
            ),
          ],
        ),
      ),
    );
  }

  void _randomizeBarHeight() {
    setState(() {});
  }

  Widget _verticalAnimatedBar({
    @required double barHeight,
    @required Color barColor,
  }) {
    return Container(
      height: 300,
      width: 80,
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 350,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: barHeight,
                decoration: BoxDecoration(
                  color: barColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _horizontalAnimatedBar({
    @required double barWidth,
    @required Color barColor,
  }) {
    return Container(
      height: 50,
      width: 350,
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: barWidth,
                decoration: BoxDecoration(
                  color: barColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  double _randomBarHeight() {
    Random random = Random();
    double randomDouble = random.nextDouble();
    return 350 * randomDouble;
  }
}
