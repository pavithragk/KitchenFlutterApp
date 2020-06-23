
import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/login.dart';
import 'package:pavitras_kitchen/welcome_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget{
  @override
Widget build(BuildContext context) {
return SplashScreen(
        seconds: 5,
        title: new Text('Welcome To Kitchen!',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: Image.asset('assets/images/image5.jpg',fit:BoxFit.scaleDown),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("flutter"),
        loaderColor: Colors.red,
        navigateAfterSeconds: WelcomeScreen(),
    );
  }

  
    }