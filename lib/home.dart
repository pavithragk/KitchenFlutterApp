import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/constants.dart';
import 'package:pavitras_kitchen/homescreen.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class Home extends StatelessWidget
{
  final String data;
  Home(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: Text('Home',
        style: TextStyle(color:ColorConstants.secondaryColor),),
      ),
       bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home, color:ColorConstants.secondaryColor), 
            title: Text('Home')),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.search, color: ColorConstants.secondaryColor,), 
              onPressed: (){
                 Navigator.pushNamed(context, searchRoute, arguments: 'search');
              }),
            title: Text('search')),
            BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.category, color: ColorConstants.secondaryColor,), 
              onPressed: (){
                Navigator.pushNamed(context, categoryRoute);
              }),
            title: Text('category')),
            BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.account_box, color: ColorConstants.secondaryColor,), 
              onPressed: (){
                 Navigator.pushNamed(context, profileRoute);
              }),
            title: Text('Profile')),
          ],
          ),
          body: Center(
            child: Text('$data'),
          )
          

    );
   
  }
  
}