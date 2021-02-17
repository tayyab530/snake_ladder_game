import 'package:flutter/material.dart';

class ReplayWidget
{
  Widget create(int _win,restart())
  {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/P$_win.png',
                  height: 200,
                  width: 200,
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text('Player $_win Wins!',
                      style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                FloatingActionButton(
                  onPressed: restart,
                  child: Icon(Icons.replay_rounded),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text('Restart Game'),
                ),
              ],
            ),
          ),
        ],
      );
  }
}

