import 'package:flutter/material.dart';

class AppBarReturn {
  Widget create() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: <Widget>[
          Text('Snake Ladder '),
          Icon(
            Icons.ac_unit_rounded,
          )
        ],
      ),
    );
  }
}
