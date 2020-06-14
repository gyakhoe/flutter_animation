import 'package:flutter/material.dart';
import 'package:flutter_animation/implicit_animation/implicit_animation_screens.dart';
import 'package:flutter_animation/implicit_animation/opacity_animation.dart';
import 'package:flutter_animation/implicit_animation/physical_modal_animation.dart';
import 'package:flutter_animation/implicit_animation/position_animation.dart';
import 'package:flutter_animation/implicit_animation/text_style_animation.dart';
import 'package:flutter_animation/implicit_animation/traffic_light.dart';
import 'package:flutter_animation/main.dart';

class Routes {
  static String homePage = '/';
  static String implicitFolder = '/implicit/';
  static String resizeAnmiation = '/implicit/resize-animation';
  static String barChartAnimation = '/implicit/bar-chart-animation';
  static String crossFadeAnimation = '/implicit/cross-fade-logo-animation';
  static String crossFadeBarAnimation = '/implicit/cross-fade-bar-animation';
  static String textStyleAnimation = '/implicit/text-style-animation';
  static String opacityAnimation = '/implicit/opacity-animation';
  static String physicalModalAnimation = '/implicit/physical-modal-animation';
  static String trifficLightAnimation = '/implicit/traffic-light-animation';
  static String positionAnimation = '/implicit/position-animation';

  static Map<String, WidgetBuilder> routeMap = {
    Routes.homePage: (context) => MyHomePage(title: 'Flutter Animation'),
    Routes.resizeAnmiation: (context) => ResizeAnimation(),
    Routes.barChartAnimation: (context) => BarChartAnimation(),
    Routes.crossFadeAnimation: (context) => CrossFadeLogoAnimation(),
    Routes.crossFadeBarAnimation: (context) => CrossFadeBar(),
    Routes.textStyleAnimation: (context) => TextStyleAnimation(),
    Routes.opacityAnimation: (context) => OpacityAnimation(),
    Routes.physicalModalAnimation: (context) => PhysicalModalAnimation(),
    Routes.trifficLightAnimation: (context) => TrafficLight(),
    Routes.positionAnimation: (context) => PositionAnimation(),
  };
}
