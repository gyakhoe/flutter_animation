import 'package:flutter/material.dart';

class RandomLinesAnimation extends StatefulWidget {
  const RandomLinesAnimation({Key key}) : super(key: key);

  @override
  _RandomLinesAnimationState createState() => _RandomLinesAnimationState();
}

class _RandomLinesAnimationState extends State<RandomLinesAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Lines')),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.teal[300],
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            AnimatedBuilder(
              animation: _animationController,
              builder: (_, __) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
