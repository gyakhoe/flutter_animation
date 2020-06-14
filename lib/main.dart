import 'package:flutter/material.dart';
import 'package:flutter_animation/common/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'Flutter Animation';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      routes: Routes.routeMap,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({
    @required this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
          ],
        ),
      ),
    );
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
}
