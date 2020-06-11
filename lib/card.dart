import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/details.dart';
import 'package:pavitras_kitchen/utils/colors.dart';


 class FeedCard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return FeedCardState();
  }

 }

 class FeedCardState extends State<FeedCard>{
  @override
  Widget build(BuildContext context) {
    
     return Material(
        child:
       Container(
         child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text('Samosa', style: TextStyle(
               color: ColorConstants.secondaryColor,
               fontSize: 20.0
             ),),
                 GestureDetector(child:
               Container(
                 child: Image.asset('assets/images/image2.jpg'),
               ),
               onTap: (){
                 Navigator.push (
                 context,
                 MaterialPageRoute(builder: (context) => DetailScreen()),
                );
               },
               ),
               Row(
                 children: <Widget>[
                   IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),
                   IconButton(icon: Icon(Icons.send),onPressed: (){}),

                 ],
               ),
               Text('Paneer Masala', style: TextStyle(
                     color: ColorConstants.secondaryColor,
                     fontSize: 20.0
                   ),),
                GestureDetector(child:
               Container(
                 child: Image.asset('assets/images/image6.jpg',
                 fit: BoxFit.cover,
                 ),
               ),
               onTap: (){
                 Navigator.push (
                 context,
                 MaterialPageRoute(builder: (context) => DetailScreen()),
                );
               },
               ),
               Row(
                 children: <Widget>[
                   IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),
                   IconButton(icon: Icon(Icons.send),onPressed: (){}),
                 ],
               ),
               Text('Palak Paneer', style: TextStyle(
                     color: ColorConstants.secondaryColor,
                     fontSize: 20.0
                   ),),
               GestureDetector(child:
               Container(
                 child: Image.asset('assets/images/image2.jpg'),
               ),
               onTap: (){
                 Navigator.push (
                 context,
                 MaterialPageRoute(builder: (context) => DetailScreen()),
                );
               },
               ),
               Row(
                 children: <Widget>[
                   IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),
                   IconButton(icon: Icon(Icons.send),onPressed: (){}),

                 ],
               ),
               Text('Veg Biriyani', style: TextStyle(
                     color: ColorConstants.secondaryColor,
                     fontSize: 20.0
                   ),),
               GestureDetector(child:
               Container(
                 child: Image.asset('assets/images/image5.jpg'),
               ),
               onTap: (){
                 Navigator.push (
                 context,
                 MaterialPageRoute(builder: (context) => DetailScreen()),
                );
               },
               ),
               Row(
                 children: <Widget>[
                   IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),
                   IconButton(icon: Icon(Icons.send),onPressed: (){}),

                 ],
               ),
               Text('Malai kofta', style: TextStyle(
                     color: ColorConstants.secondaryColor,
                     fontSize: 20.0
                   ),),
               GestureDetector(child:
               Container(
                 child: Image.asset('assets/images/image6.jpg'),
               ),
               onTap: (){
                 Navigator.push (
                 context,
                 MaterialPageRoute(builder: (context) => DetailScreen()),
                );
               },
               ),
               Row(
                 children: <Widget>[
                   IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),
                   IconButton(icon: Icon(Icons.send),onPressed: (){}),

           ],
         ),
           ]
       ),
       )
      );

    
  }

 }