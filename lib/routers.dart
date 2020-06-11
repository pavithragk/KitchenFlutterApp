import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/category.dart';
import 'package:pavitras_kitchen/homescreen.dart';
import 'package:pavitras_kitchen/profile.dart';
import 'package:pavitras_kitchen/search.dart';

class Router {
  
  static Route<dynamic> generatedRoute(RouteSettings settings){
    switch(settings.name){
      case 'homeRoute':
      
        return MaterialPageRoute(builder: (_) =>HomeScreen());
      case 'searchRoute':
          //  var data = settings.arguments as String;
        // return MaterialPageRoute(builder: (_) => SearchScreen(data));
      case 'categoryRoute':
        return MaterialPageRoute(builder: (_) => CategoryScreen());
      case 'profileRoute':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      default:
        return MaterialPageRoute(builder: (_) =>HomeScreen());
       
    }
  } 
}