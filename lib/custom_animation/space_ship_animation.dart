import 'package:flutter/material.dart';

class SpaceShipAnimation extends StatefulWidget {
  SpaceShipAnimation({Key key}) : super(key: key);

  @override
  _SpaceShipAnimationState createState() => _SpaceShipAnimationState();
}

class _SpaceShipAnimationState extends State<SpaceShipAnimation>
    with SingleTickerProviderStateMixin {
  final Image spaceShip = Image.asset('assets/images/spaceship.png');
  final AssetImage backgroundImage =
      AssetImage('assets/images/star-background.jpg');

  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacship Animation'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Image(
              image: backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          BeamTransition(animation: _animationController),
          spaceShip,
        ],
      ),
    );
  }
}

class BeamTransition extends AnimatedWidget {
  const BeamTransition({
    Key key,
    @required Animation<double> animation,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return ClipPath(
      clipper: const BeamClipper(),
      child: Container(
        height: 1000,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 1.5,
            colors: [
              Colors.yellow,
              Colors.transparent,
            ],
            stops: [0, animation.value],
          ),
        ),
      ),
    );
  }
}

class BeamClipper extends CustomClipper<Path> {
  const BeamClipper();

  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(size.width / 2, size.height / 2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(size.width / 2, size.height / 2)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
