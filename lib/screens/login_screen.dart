

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return new _LoginScreenState();
  }

}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(

        child: Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          padding: EdgeInsets.only(left: 5.0, right: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              emailPhone(),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailPhone() {
    //dark = #3E4959
    return Material(
      shadowColor: Colors.yellowAccent,
      elevation: 20.0,
      child: TextField(

        style: TextStyle(
          color: Color(0xFF16C6CC),
          fontWeight: FontWeight.w300,
        ),
        decoration: InputDecoration(

          hintText: 'Email or Phone number',
          hintStyle: TextStyle(fontWeight: FontWeight.w200, color: Color(0xFFCCCBCA)),
          helperText: 'abc@def.com/0712345698',
          helperStyle: TextStyle(fontWeight: FontWeight.w100, color: Color(0xFFCCCBCA)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35.0)),
              borderSide: BorderSide(color: Colors.yellowAccent)

          ),
        ),


      ),
    );
  }

}