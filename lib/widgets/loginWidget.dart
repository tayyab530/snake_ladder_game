import 'package:flutter/material.dart';
import 'package:snake_ledder_two_player/widgets/players_holder.dart';

class LoginForm extends StatefulWidget
{
  createState()
  {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> with ValidationMixin
{
  final formKey = GlobalKey<FormState>();
  String email = 'tayyab@gmail.com';
  String password = '123';

  final formkey2 = GlobalKey<PlayerHolderFor3PState>();

  Widget build(context)
  {
    if(email == null)
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.all(15.0)),
            submitBotton(),
          ],
        ),
      ),
    );
    else 
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            key: formkey2,
            children: <Widget>[
              Text('Form Sumitted'),
              Container(margin: EdgeInsets.only(top: 10.0),),
              FloatingActionButton(
                onPressed: ()=>setState(() {
                  email = null; password = null;
                }),
                child: Icon(Icons.repeat_rounded),
                ),
            ],
          ),
     );
  }

  Widget emailField()
  {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'jojo@yahoo.com',
      ),
      validator: validateEmail,
      onSaved: (String value){
        setState(()=>formkey2.currentState.reset);
      },
    );
  }

  Widget passwordField()
  {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'afa323',
      ),
      validator: validatePassword,
      onSaved: (String value){
        setState(()=>password=value);
      },
    );
  }

  Widget submitBotton()
  {
    return RaisedButton(
        color: Colors.yellowAccent[100],
        child: Text('Submit Form'),
        onPressed: ()=>{formKey.currentState.validate()?formkey2.currentState.reset():print('')},
    );
  }

}

class ValidationMixin 
{

  String validateEmail(String value){
    if(!(value.contains('@') && value.contains('.') && value.contains('c') && value.contains('o') && value.contains('m') && value == 'tayyab@gmail.com'))
     return 'Please enter a valid email!';
        
     return null; // optional field(bu default set)
  }

  String validatePassword(String value){
        if(value != '123')
          return 'Please enter atleast 6 character!';

        return null;
      }
}