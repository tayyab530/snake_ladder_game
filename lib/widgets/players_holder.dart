import 'package:flutter/material.dart';
import 'package:snake_ledder_two_player/functions/audiofunctions.dart';
import 'dart:math'; // for random()
import 'package:snake_ledder_two_player/functions/score.dart';
import 'mainWidget.dart';
import 'package:snake_ledder_two_player/widgets/mainWidget.dart';
import 'package:snake_ledder_two_player/widgets/replayWidget.dart';
import 'package:snake_ledder_two_player/widgets/startingWidget.dart';

class PlayerHolderFor3P extends StatefulWidget {
  createState() {
    return PlayerHolderFor3PState();
  }
}

class PlayerHolderFor3PState extends State<PlayerHolderFor3P> {
  int _score_1 = 0, _score_2 = 0, _score_3 = 0, _win = 0;
  // ignore: non_constant_identifier_names
  var _random_no = new Random();
  bool _start = false,
      _turn_1 = true,
      _turn_2 = false,
      _turn_3 = false,
      _unlock_1 = false,
      _unlock_2 = false,
      _unlock_3 = false;


  Widget build(context) {
    if(!_start)
      return StartingWidget().create(tempCallStart);

    else if (_win==0) {
      return MainWidget().create(callForP1,callForP2,callForP3,_score_1,_score_2,_score_3);

    } else
      return ReplayWidget().create(_win,restart);
  }
  
    void callForP1() {
    int tempScore;
    setState(() {
      if (_turn_1) {
        int temp = _random_no.nextInt(6) + 1;
        MainWidget().getTemp1(temp);
        if(temp == 6 && !_unlock_1){_unlock_1 = true; temp = 0; callForP1();}
        if (!_unlock_1) if (temp != 6) {
          _turn_3 = false;
          _turn_1 = false;
          _turn_2 = true;
          return;
        }
        _score_1 += (temp);
        tempScore = _score_1;
        _score_1 = snakeBit(tempScore);

        if(_score_1<tempScore)
        print('***snakebite at $tempScore***');

        if(_score_1==tempScore)
        _score_1 = ladders(tempScore);
        
        if(_score_1>tempScore)
        print('***ladder achieved $tempScore***');

        checkForSound(tempScore, _score_1);

        if (_score_1 > 94) {
          if(_score_1 == 100){
          _win = 1;
          print('Player1: $temp total $_score_1');
          AudioClips().playLocal("audiof");
          AudioClips().stopLoop();
          AudioClips().stopLoop();
          return;
          }
          else if(_score_1>100){
            _score_1 -= temp;
            print('Ceased at $_score_1');
            _turn_3 = false;
            _turn_1 = false;
            _turn_2 = true;
            _unlock_1 = true;
          }
        }
         
        print('Player1: $temp total $_score_1');
        _turn_3 = false;
        _turn_1 = false;
        _turn_2 = true;
        _unlock_1 = true;
      }
    });
  }

  void callForP2() {

    int tempScore;
    setState(() {
      if (_turn_2) {
        int temp = _random_no.nextInt(6) + 1;
        MainWidget().getTemp2(temp);
        
        if(temp == 6 && !_unlock_2){_unlock_2 = true; temp = 0; callForP2();}

        if (!_unlock_2) if (temp != 6) {
          _turn_1 = false;
          _turn_2 = false;
          _turn_3 = true;
          return;
        }

        _score_2 += (temp);
        tempScore = _score_2;
        _score_2 = snakeBit(tempScore);

        if(_score_2<tempScore)
        print('***snakebite at $tempScore***');
        if(_score_2==tempScore)
        _score_2 = ladders(_score_2);

        if(_score_2>tempScore)
        print('***ladder achieved at $tempScore***');

        checkForSound(tempScore, _score_2);
        
        if (_score_2 > 94) {
          if(_score_2 == 100){
          _win = 2;
          print('Player2: $temp total $_score_2');
          AudioClips().playLocal("audiof");
          AudioClips().stopLoop();
          AudioClips().stopLoop();
          return;
          }
          else if(_score_2>100){
            _score_2 -= temp;
            print('Ceased at $_score_2');
            _turn_1 = false;
            _turn_2 = false;
            _turn_3 = true;
            _unlock_2 = true;
          }
        }
          

        print('Player2: $temp total $_score_2');
        _turn_1 = false;
        _turn_2 = false;
        _turn_3 = true;
        _unlock_2 = true;
      }
    });
  }

  void callForP3() {

    int tempScore;
    setState(() {
      if (_turn_3) {
        int temp = _random_no.nextInt(6) + 1;
        MainWidget().getTemp3(temp);

        if(temp == 6 && !_unlock_3){_unlock_3 = true; temp = 0; callForP3();}

        if (!_unlock_3) if (temp != 6) {
          _turn_3 = false;
          _turn_2 = false;
          _turn_1 = true;
          return;
        }

        _score_3 += (temp);
        tempScore = _score_3;
        _score_3 = snakeBit(tempScore);

        if(_score_3<tempScore)
        print('***snakebite at $tempScore***');

        if(_score_3==tempScore)
        _score_3 = ladders(_score_3);

        if(_score_3>tempScore)
        print('***ladder achieved at $tempScore***');

        checkForSound(tempScore, _score_3);
        
        if (_score_3 > 94) {
          if(_score_3 == 100){
          _win = 1;
          print('Player3: $temp total $_score_3');
          AudioClips().playLocal("audiof");
          AudioClips().stopLoop();
          AudioClips().stopLoop();
          return;
          }
          else if(_score_3>100){
            _score_3 -= temp;
            print('Ceased at $_score_3');
            _turn_3 = false;
            _turn_2 = false;
            _turn_1 = true;
            _unlock_3 = true;
          }
        }

        print('Player3: $temp total $_score_3');
        _turn_3 = false;
        _turn_2 = false;
        _turn_1 = true;
        _unlock_3 = true;
      }
    });
  }

  void tempCallStart() {
    AudioClips().playLoop('starting');
    
    _start = true;
    setState(() {});
  }

  void restart() {
    setState(() {
      _score_1 = 0;
      _score_2 = 0;
      _score_3 = 0;
      _win = 0;
      _start = false;
      _turn_1 = true;
      _turn_2 = false;
      _turn_3 = false;
      _unlock_1 = false;
      _unlock_2 = false;
      _unlock_3 = false;
    });
  }

  void reset(){
    setState(() {
      _start = false;
    });
  }


}

