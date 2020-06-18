import 'package:flutter/material.dart';
import 'package:flutter_animation/common/routes.dart';

List<FlatButton> getListOfButton(BuildContext context) {
  List<FlatButton> listOfButtons = [
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.resizeAnmiation,
      buttonName: 'Resize Container',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.barChartAnimation,
      buttonName: 'Bar Chart',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.crossFadeAnimation,
      buttonName: 'Cross Fade',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.crossFadeBarAnimation,
      buttonName: 'Cross Fade Bar',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.textStyleAnimation,
      buttonName: 'Text Style Animation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.opacityAnimation,
      buttonName: 'Opacity Animation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.physicalModalAnimation,
      buttonName: 'Physical Modal Animation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.trifficLightAnimation,
      buttonName: 'Traffic Light Animgation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.positionAnimation,
      buttonName: 'Position Animation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.starAnimation,
      buttonName: 'Star Animation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.rotation,
      buttonName: 'Rotation Animation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.galaxyRotation,
      buttonName: 'Galaxy Rotation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.rippleScaleTransition,
      buttonName: 'Items Scale',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.bouncingItemTransition,
      buttonName: 'Bouncing Item',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.spaceShipAnimation,
      buttonName: 'Spaceship Animation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.randomLineAnimation,
      buttonName: 'Random Line Animation',
    ),
    _animationScreenRouteButton(
      context: context,
      routeName: Routes.customShapePainter,
      buttonName: 'Custom Shape Paint',
    ),
  ];

  return listOfButtons.reversed.toList();
}

Widget _animationScreenRouteButton({
  @required String buttonName,
  @required String routeName,
  @required BuildContext context,
}) {
  return FlatButton(
    color: Theme.of(context).primaryColorDark,
    child: Text(
      buttonName,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed: () {
      Navigator.pushNamed(context, routeName);
    },
  );
}
