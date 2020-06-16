import 'package:flutter/material.dart';

class ItemsScaleTransition extends StatefulWidget {
  const ItemsScaleTransition({Key key}) : super(key: key);

  @override
  _ItemsScaleTransitionState createState() => _ItemsScaleTransitionState();
}

class _ItemsScaleTransitionState extends State<ItemsScaleTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
    )..repeat();
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
        title: Text('Item Scale'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Stack(
          children: <Widget>[
            ScaleTransition(
              scale: _animationController,
              child: Container(
                height: 50,
                width: 50,
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
