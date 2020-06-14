import 'package:flutter/material.dart';
import 'package:flutter_animation/widgets/center_item_with_button.dart';

class PhysicalModalAnimation extends StatefulWidget {
  PhysicalModalAnimation({Key key}) : super(key: key);

  @override
  _PhysicalModalAnimationState createState() => _PhysicalModalAnimationState();
}

class _PhysicalModalAnimationState extends State<PhysicalModalAnimation> {
  double _elevation = 10;
  Color _shadowColor = Colors.grey;
  Color _boxColor = Colors.indigo;

  bool _isNewModalApplied = false;

  void _setNewModal() {
    _elevation = 60;
    _shadowColor = Colors.amber[800];
    _boxColor = Colors.amber;
  }

  void _setOldModal() {
    _elevation = 30;
    _shadowColor = Colors.indigo[800];
    _boxColor = Colors.indigo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physical Modal Animation'),
      ),
      body: centerItemWithBottomButton(
        centerItem: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(50),
          child: AnimatedPhysicalModel(
            elevation: _elevation,
            shape: BoxShape.rectangle,
            duration: Duration(seconds: 1),
            shadowColor: _shadowColor,
            color: _boxColor,
            child: FlutterLogo(),
          ),
        ),
        button: IconButton(
          icon: Icon(Icons.replay),
          onPressed: () {
            setState(() {
              _isNewModalApplied ? _setOldModal() : _setNewModal();
              _isNewModalApplied
                  ? _isNewModalApplied = false
                  : _isNewModalApplied = true;
            });
          },
        ),
      ),
    );
  }
}
