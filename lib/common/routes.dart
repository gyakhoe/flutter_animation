import 'package:flutter/material.dart';
import 'package:flutter_animation/implicit_animation/implicit_animations.dart';
import 'package:flutter_animation/main.dart';
import 'package:flutter_animation/transition/galaxy_rotation_transition.dart';
import 'package:flutter_animation/transition/transition_screens.dart';
import 'package:flutter_animation/tween_animation/tween_animations.dart';

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
  static String starAnimation = '/tween-animation/star';
  static String rotation = '/tween-animation/roatation';
  static String galaxyRotation = '/transition/galaxy-rotation';
  static String rippleScaleTransition = '/transition/ripple-scale-transition';
  static String bouncingItemTransition = '/transition/moving-item-transition';

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
    Routes.starAnimation: (context) => Star(),
    Routes.rotation: (context) => Rotation(),
    Routes.galaxyRotation: (context) => GalaxyRotationTransition(),
    Routes.rippleScaleTransition: (context) => RippleScaleTransition(),
    Routes.bouncingItemTransition: (context) => MovingItemTransition(),
  };
}
