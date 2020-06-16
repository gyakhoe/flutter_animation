import 'package:flutter/material.dart';

class GalaxyRotationTransition extends StatefulWidget {
  const GalaxyRotationTransition({Key key}) : super(key: key);

  @override
  _GalaxyRotationTransitionState createState() =>
      _GalaxyRotationTransitionState();
}

class _GalaxyRotationTransitionState extends State<GalaxyRotationTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      duration: Duration(seconds: 15),
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
        title: Text('Galaxy Rotation'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            Align(
              child: RotationTransition(
                alignment: Alignment.center,
                turns: _animationController,
                child: Image.asset('assets/images/galaxy.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.grey[500],
                ),
                child: IconButton(
                  icon: Icon(
                    _animationController.isAnimating
                        ? Icons.play_arrow
                        : Icons.stop,
                    size: 80,
                  ),
                  onPressed: () =>
                      _controlGalaxy(controller: _animationController),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _controlGalaxy({AnimationController controller}) {
    controller.isAnimating ? controller.stop() : controller.repeat();
    setState(() {});
  }
}
