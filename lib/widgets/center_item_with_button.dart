import 'package:flutter/material.dart';

Widget centerItemWithBottomButton({
  @required Widget centerItem,
  @required Widget button,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Align(
        child: Container(
          height: 400,
          width: 400,
          child: Center(child: centerItem),
        ),
      ),
      Align(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.grey[500], borderRadius: BorderRadius.circular(25)),
          child: button,
        ),
      ),
    ],
  );
}
