import 'package:flutter/material.dart';
import 'package:flutter_animation/common/routes.dart';
import 'package:flutter_animation/implicit_animation/bar_chart_animation.dart';
import 'package:flutter_animation/implicit_animation/resize_animation.dart';

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
      routes: {
        Routes.homePage: (context) => MyHomePage(title: _title),
        Routes.resizeAnmiation: (context) => ResizeAnimation(),
        Routes.barChartAnimation: (context) => BarChartAnimation(),
      },
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
              buttonName: 'Resize Container Animation',
            ),
            _animationScreenRouteButton(
              context: context,
              routeName: Routes.barChartAnimation,
              buttonName: 'Bar Chart Animation',
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
