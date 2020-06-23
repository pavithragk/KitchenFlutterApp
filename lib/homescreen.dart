
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/addpost.dart';
// import 'package:pavitras_kitchen/card.dart';
import 'package:pavitras_kitchen/category.dart';
import 'package:pavitras_kitchen/home.dart';
import 'package:pavitras_kitchen/profile.dart';
import 'package:pavitras_kitchen/search.dart';
import 'package:pavitras_kitchen/services/firebaseApiController.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key key,  this.uid}) : super(key: key);
   final String uid;
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  // FirebaseController controller = FirebaseController();

  final List<Widget>_screens = [
    Home(),
    SearchScreen(),
    CategoryScreen(),
    ProfileScreen(),
  ];
int _selectedIndex = 0;

 void _onItemTapped(int index){
  setState(() {
    _selectedIndex = index;
  });
}

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: ColorConstants.primaryColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.primaryColor,
          title: Text(
            'Home',
            style: TextStyle(color: ColorConstants.secondaryColor),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: ColorConstants.secondaryColor),
                title: Text('Home')),
            BottomNavigationBarItem(
                icon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: ColorConstants.secondaryColor,
                    ),
                    ),
                title: Text('search')),
            BottomNavigationBarItem(
                icon: IconButton(
                    icon: Icon(
                      Icons.category,
                      color: ColorConstants.secondaryColor,
                    ),
                    
                    ),
                title: Text('category')),
            BottomNavigationBarItem(
                icon: IconButton(
                    icon: Icon(
                      Icons.account_box,
                      color: ColorConstants.secondaryColor,
                    ),
                    
                    ),
                title: Text('Profile')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPost()),
            );
          },
          child: Icon(
            Icons.add,
            color: ColorConstants.secondaryColor,
          ),
          backgroundColor: ColorConstants.primaryColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: _screens[_selectedIndex],
     );
        
  }

}
