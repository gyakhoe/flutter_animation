import 'package:flutter/material.dart';

Widget verticalBarChart({
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

Widget horizontalBarChart({
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
