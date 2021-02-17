import 'package:flutter/material.dart';
import 'package:snake_ledder_two_player/widgets/players_holder.dart';

void main()
{
  runApp(App());
}

class App extends StatelessWidget
{
  Widget build(context)
  {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(  
        image: DecorationImage(
        image: AssetImage("assets/DD.jpg"), fit: BoxFit.cover)
        ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        
        body: PlayerHolderFor3P(),
    ),
      ),
    );
  }
}