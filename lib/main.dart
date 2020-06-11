import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pavitras_kitchen/addpost.dart';
import 'package:pavitras_kitchen/card.dart';
import 'package:pavitras_kitchen/category.dart';
import 'package:pavitras_kitchen/comments.dart';
import 'package:pavitras_kitchen/constants.dart';
import 'package:pavitras_kitchen/details.dart';
import 'package:pavitras_kitchen/home.dart';
import 'package:pavitras_kitchen/homescreen.dart';
import 'package:pavitras_kitchen/login.dart';
import 'package:pavitras_kitchen/profile.dart';
import 'package:pavitras_kitchen/routers.dart';
import 'package:pavitras_kitchen/search.dart';
import 'package:pavitras_kitchen/signup.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  onGenerateRoute: Router.generatedRoute,
      // initialRoute: homeRoute,
      
      // home:WelcomeScreen(),
          //  home: Login(),
          // home: SignUp()
              //  home: HomeScreen(),
        // home: ProfileScreen(),
          // home: CategoryScreen(),
      // home: SearchScreen(),
        // home: DetailScreen(),
      // home: CommentScreen()
      //  home: Home(),
             home: AddPost(),
        // home: FeedCard(),
    
    );
  }
}
