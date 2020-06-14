import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({Key key}) : super(key: key);

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
                  tween: ColorTween(begin: Colors.white, end: Colors.red),
                  duration: Duration(seconds: 3),
                  builder: (_, Color color, __) {
                    return ColorFiltered(
                      child: Image.asset('assets/images/sun.png'),
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
