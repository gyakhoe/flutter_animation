import 'package:flutter/material.dart';
import 'package:flutter_animation/common/list_of_curves.dart';
import 'package:flutter_animation/common/random_numbers.dart';
import 'package:flutter_animation/widgets/bar_chart.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';

class CrossFadeBar extends StatefulWidget {
  CrossFadeBar({Key key}) : super(key: key);

  @override
  _CrossFadeBarState createState() => _CrossFadeBarState();
}

class _CrossFadeBarState extends State<CrossFadeBar> {
  Duration _animationDuration = Duration(seconds: 1);
  bool _isFirstShowing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Fade Bar'),
      ),
      body: centerItemWithBottomButton(
        centerItem: AnimatedCrossFade(
          duration: _animationDuration,
          crossFadeState: _isFirstShowing
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          firstCurve: randomCurveStyle(),
          secondCurve: randomCurveStyle(),
          firstChild: Container(
            height: 400,
            child: Center(child: CircularProgressIndicator()),
          ),
          secondChild: Container(
            height: 400,
            child: Center(
              child: verticalBarChart(
                barHeight: randomBarChartHeight(),
                barColor: Colors.teal,
              ),
            ),
          ),
        ),
        button: IconButton(
            icon: Icon(Icons.replay),
            onPressed: () {
              setState(() {
                _isFirstShowing
                    ? _isFirstShowing = false
                    : _isFirstShowing = true;
              });
            }),
      ),
    );
  }
}
