import 'package:flutter/material.dart';
import 'package:flutter_animation/common/random_numbers.dart';
import 'package:flutter_animation/widgets/bar_chart.dart';

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
                  verticalBarChart(
                    barHeight: randomBarChartHeight(),
                    barColor: Colors.blue[400],
                  ),
                  verticalBarChart(
                    barHeight: randomBarChartHeight(),
                    barColor: Colors.red[400],
                  ),
                  verticalBarChart(
                    barHeight: randomBarChartHeight(),
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
                  horizontalBarChart(
                    barWidth: randomBarChartHeight(),
                    barColor: Colors.yellow[400],
                  ),
                  horizontalBarChart(
                    barWidth: randomBarChartHeight(),
                    barColor: Colors.purple[400],
                  ),
                  horizontalBarChart(
                    barWidth: randomBarChartHeight(),
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
}
