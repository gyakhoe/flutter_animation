import 'package:flutter/material.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';

class RippleScaleTransition extends StatefulWidget {
  RippleScaleTransition({Key key}) : super(key: key);

  @override
  _RippleScaleTransitionState createState() => _RippleScaleTransitionState();
}

class _RippleScaleTransitionState extends State<RippleScaleTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      lowerBound: 0,
      upperBound: 1,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scale Transition'),
      ),
      body: centerItemWithBottomButton(
          centerItem: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.blue[400],
            child: Stack(
              children: <Widget>[
                Align(
                  child: ScaleTransition(
                    scale: _animation,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue[300],
                            blurRadius: 25,
                            spreadRadius: 5,
                            offset: Offset(
                              5,
                              5,
                            ),
                          ),
                        ],
                        border: Border.all(
                          width: 1,
                          color: Colors.blue[300],
                          style: BorderStyle.solid,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[400],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          button: IconButton(
            icon: Icon(_animationController.isAnimating
                ? Icons.stop
                : Icons.play_arrow),
            iconSize: 80,
            onPressed: () {
              setState(() {
                _animationController.isAnimating
                    ? _animationController.stop()
                    : _animationController.repeat();
              });
            },
          )),
    );
  }
}
