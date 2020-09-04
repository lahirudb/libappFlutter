
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraryApp/helper/constants.dart';
import 'package:libraryApp/router.dart';
import 'package:loading_animations/loading_animations.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startTime();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  _startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, _navigateToHome);
  }

  _navigateToHome() {
    Navigator.of(context).pushReplacementNamed(loginRoute);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child:Center(
          child:  Stack(
            alignment: Alignment.center,
            children: <Widget>[

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  splash_logo(),
                  SizedBox(height: 15.0,),
                  text(),
                ],
              ),


              loadingAnimation(),

              SizedBox(height: 50.0,),
            ],
          ),
        ),
      ),
    );

  }

  Widget splash_logo() {
    return Container(

      child: Image.asset('assets/imageIcons/splash_logo_.png', height: 100.0, width: 100.0, ),
    );
  }
  
  Widget text() {
    return Container(
      child: Text('The Library App', style : TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFF16C6CC),
      ),),
    );
  }

  Widget loadingAnimation() {
    return Expanded(
      child: Container(
        margin:EdgeInsets.only(bottom: 25.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: LoadingBouncingGrid.circle(backgroundColor: Color(0xFFF15424),size: 20.0,),
        ),
      ),
    );
  }
  
}