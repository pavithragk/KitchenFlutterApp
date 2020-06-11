import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class CategoryScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return CategoryScreenState();
  }

}
class CategoryScreenState extends State<CategoryScreen>{

  final breads = GestureDetector(
    onTap: (){},
    child: Container(
    height: 100.0,
    width: 150,
    color: Colors.red[900],
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Breads, Muffins,& Scones",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
   ),
  );
  final breakfast = GestureDetector(
    onTap: (){},
    child:Container(
    height: 100.0,
    width: 150,
    color: Colors.yellow[900],
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Breakfast",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
  ),
  );
  final desserts = GestureDetector(
    onTap: (){},
    child: Container(
    height: 100.0,
    width: 150,
    color: Colors.black,
    child: Padding(
     padding: const EdgeInsets.all(20.0),
      child: Text("Desserts",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
  ),
  );
  final dinner = GestureDetector(
    onTap: (){},
    child:Container(
    height: 100.0,
    width: 150,
    color: ColorConstants.secondaryColor,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Dinner",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
   ),
  );
  final salads = GestureDetector(
    onTap: (){},
    child:Container(
    height: 100.0,
    width: 150,
    color: Colors.blue,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Salads",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
   ),
  );
  final drinks = GestureDetector(
    onTap: (){},
    child:Container(
    height: 100.0,
    width: 150,
    color: Colors.orange[900],
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Drinks",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
  ),
  );
  final lunch = GestureDetector(
    onTap: (){},
    child:Container(
    height: 100.0,
    width: 150,
    color: Colors.green[400],
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Lunch",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
  ),
  );
  final main = GestureDetector(
    onTap: (){},
    child:Container(
    height: 100.0,
    width: 150,
    color: Colors.purple[400],
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Main Course",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
  ),
  );
  final snacks = GestureDetector(
    onTap: (){},
    child:Container(
    height: 100.0,
    width: 150,
    color: Colors.black,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Snacks",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
  ),
  );
  final soups = GestureDetector(
    onTap: (){},
    child:Container(
    height: 100.0,
    width: 150,
    color: Colors.blue[600],
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Soups",
      textAlign: TextAlign.center,
      style: TextStyle(color: ColorConstants.primaryColor,
      fontWeight: FontWeight.bold),),
    ),
  ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
       icon: Icon(Icons.arrow_back, color: ColorConstants.secondaryColor),
        onPressed: () => Navigator.of(context).pop(),
        ), 
        backgroundColor: ColorConstants.primaryColor,
        title: Text('Category', style: TextStyle(color:ColorConstants.secondaryColor),),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
          Expanded(
         child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 20.0,
              bottom: 8.0),
              child: Row(
                children: <Widget>[
                  breads,
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: breakfast,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 20.0,
              bottom: 8.0),
              child: Row(
                children: <Widget>[
                  desserts,
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: dinner,
                  ),
                ],
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 20.0,
              bottom: 8.0),
             child: Row(
               children: <Widget>[
                 salads,
                 Padding(
                  padding: const EdgeInsets.only(left:20.0),
                   child: drinks,
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 20.0,
              bottom: 8.0),
             child: Row(
               children: <Widget>[
                 lunch,
                 Padding(
                   padding: const EdgeInsets.only(left:20.0),
                   child: main,
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 20.0,
              bottom: 8.0),
             child: Row(
               children: <Widget>[
                 snacks,
                 Padding(
                   padding: const EdgeInsets.only(left:20.0),
                   child: soups,
                 ),
               ],
             ),
           ),
          ],
        ),
      ),
          ]
        ),
      ),
    );
  }

}
