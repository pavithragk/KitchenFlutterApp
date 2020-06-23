import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/addpost.dart';
import 'package:pavitras_kitchen/home.dart';
import 'package:pavitras_kitchen/homescreen.dart';
import 'package:pavitras_kitchen/profile.dart';
import 'package:pavitras_kitchen/signup.dart';
import 'package:pavitras_kitchen/splash_screen.dart';
import 'package:pavitras_kitchen/welcome_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // title: 'Food!',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      //  onGenerateRoute: Router.generatedRoute,
      // initialRoute: homeRoute,

      //  home:WelcomeScreen(),
      //  home: Login(),
        //  home: SignUp()
        // home: HomeScreen(),
        // home: ProfileScreen(),
      // home: CategoryScreen(),
      // home: SearchScreen(),
      // home: DetailScreen(),
      // home: CommentScreen()
          // home: Home(),
         home: HomeScreen(),
      // home: FeedCard(),
      //  home: AddPost(),
      // home: SplashScreen(),
      // home: SplashPage(),
    );
  }
}
