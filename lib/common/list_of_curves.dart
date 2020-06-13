import 'dart:math';

import 'package:flutter/material.dart';

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

Curve randomCurveStyle() {
  Random random = Random();
  return availableCurves.elementAt(random.nextInt(availableCurves.length));
}
