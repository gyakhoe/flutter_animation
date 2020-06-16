import 'package:flutter/material.dart';

class MovingItemTransition extends StatefulWidget {
  const MovingItemTransition({Key key}) : super(key: key);

  @override
  _MovingItemTransitionState createState() => _MovingItemTransitionState();
}

class _MovingItemTransitionState extends State<MovingItemTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  RelativeRectTween _relativeRectTween;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  double fromTop = 0;
  double fromLeft = 0;
  double fromRight = 0;
  double fromBottom = 0;

  @override
  Widget build(BuildContext context) {
    Size _screen = MediaQuery.of(context).size;
    _relativeRectTween = RelativeRectTween(
        begin: RelativeRect.fromLTRB(0, 0, 0, 0),
        end: RelativeRect.fromLTRB(
            _screen.width - 50, _screen.height - 120, 0, 0));
    return Scaffold(
      appBar: AppBar(
        title: Text('Moving Items'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            PositionedTransition(
              rect: _relativeRectTween.animate(_animationController),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                  child: FlutterLogo(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
