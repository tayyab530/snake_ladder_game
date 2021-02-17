import 'package:flutter/material.dart';

int temp1 = 1;
int temp2 = 1;
int temp3 = 1;

class MainWidget 
{
  
  Widget create(callForP1(),callForP2(),callForP3(),int _score_1,int _score_2,int _score_3)
  {
    return ListView(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    'assets/P1.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text('Score: $_score_1',
                      style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),)),
                FlatButton(
                  onPressed: callForP1,
                  child: Image.asset('assets/Dice/$temp1.png',width: 50.0,height: 50.0,),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    'assets/P2.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text('Score: $_score_2',style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    ),
                FlatButton(
                  onPressed: callForP2,
                  child: Image.asset('assets/Dice/$temp2.png',width: 50.0,height: 50.0,),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    'assets/P3.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text('Score: $_score_3',
                      style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),)),
                FlatButton(
                  onPressed: callForP3,
                  child: Image.asset('assets/Dice/$temp3.png',width: 50.0,height: 50.0,),
                ),
              ],
            ),
          ),
        ],
      );
  }

  getTemp1(int roll){
    temp1 = roll;
  }

  getTemp2(int roll){
    temp2 = roll;
  }

  getTemp3(int roll){
    temp3 = roll;
  }
}