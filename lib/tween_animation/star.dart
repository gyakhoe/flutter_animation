import 'package:flutter/material.dart';

class Star extends StatefulWidget {
  static final Widget child = Image.asset('assets/images/sun.png');
  const Star({Key key}) : super(key: key);

  @override
  _StarState createState() => _StarState();
}

class _StarState extends State<Star> {
  Color _newColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Animation'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('assets/images/star-background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Container(
                height: 300,
                width: 300,
                child: TweenAnimationBuilder(
                  tween: ColorTween(begin: Colors.white, end: _newColor),
                  duration: Duration(seconds: 3),
                  onEnd: () {
                    setState(() {
                      _newColor =
                          _newColor == Colors.red ? Colors.white : Colors.red;
                    });
                  },
                  builder: (_, Color color, __) {
                    return ColorFiltered(
                      child: Star.child,
                      colorFilter: ColorFilter.mode(color, BlendMode.modulate),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
