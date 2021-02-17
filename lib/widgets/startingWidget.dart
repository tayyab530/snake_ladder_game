
import 'package:flutter/material.dart';

class StartingWidget 
{
  StartingWidget();

  Widget create(tempCallStart())
  {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    'Click Here to Start!',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                FloatingActionButton(
                  onPressed: tempCallStart,
                  child: Icon(Icons.star_outline_rounded),
                ),
              ],
            ),
          ),
        ],
      );
  }
}