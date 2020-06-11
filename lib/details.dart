import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/utils/colors.dart';
import 'package:pavitras_kitchen/services/firebaseApiService.dart';

class DetailScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    
    return DetailScreenState();
  }
  
}

class DetailScreenState extends State<DetailScreen>
{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Container(
        child:
        ListView(
          // shrinkWrap: true,
          children: <Widget>[
         Column(
          children: <Widget>[
            Container(child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:300.0),
                  child: IconButton(icon: Icon(Icons.edit), onPressed: (){}),
                ),
                Image.asset('assets/images/image9.jpeg',
                fit: BoxFit.cover,),
              ],
            )),
            Text('Veg Pulao', style: TextStyle(
              color: ColorConstants.secondaryColor,
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),),
            Container(
              child: Row(
                children: <Widget>[
                  Text('Ingredients',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: ColorConstants.secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,),),
                  IconButton(icon: Icon(Icons.edit), onPressed: (){
                    //  editData();
                  }),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: <Widget>[
                        IconButton(icon: 
                        Icon(Icons.thumb_up,
                        color: Colors.blue[600],),
                        onPressed: (){},),
                        Text('+1'),
                      ],
                    ),
                  ),
                   Column(
                     children: <Widget>[
                       IconButton(icon: 
                        Icon(Icons.share,
                        color: Colors.blue[600],),
                        onPressed: (){},),
                        Text('+1'),
                     ],
                   ),
                   Column(
                     children: <Widget>[
                       IconButton(icon: 
                        Icon(Icons.comment,
                        color: Colors.blue[600],),
                        onPressed: (){},),
                        Text('+1'),
                     ],
                   ),
                ],
              ),
            ),
            
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Ingredients(),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text('Rice',style: TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0,),),
                    ),
                  ],
                ),
                 Row(
                  children: <Widget>[
                    Ingredients(),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text('oil',style: TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0,),),
                    ),
                  ],
                ),
                 Row(
                  children: <Widget>[
                    Ingredients(),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text('sliced onions and chillies',style: TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0,),),
                    ),
                  ],
                ),
                 Row(
                  children: <Widget>[
                    Ingredients(),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text('chopped mix of vegetables',style: TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0,),),
                    ),
                  ],
                ),
                 Row(
                  children: <Widget>[
                    Ingredients(),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text('Required Water',style: TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0,),),
                    ),
                  ],
                ),
                 Row(
                  children: <Widget>[
                    Ingredients(),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text('All the masala items',style: TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0,),),
                    ),
                  ],
                ),
          Row(
            children: <Widget>[
              Text('Steps to make veg pulao:', style: TextStyle(color:ColorConstants.secondaryColor,
              fontSize: 25.0,
              fontWeight: FontWeight.bold),),
              IconButton(icon: Icon(Icons.edit), onPressed: (){})
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('1. Heat oil in a hot pan\n 2. Next fry onion and chillies until they turned into golden\n 3. and add all the veggies\n 4. pour water with the salt\n 5. bring the water into some rolling boil\n 6. next add the rice and stir it well\n 7. taste the mixture if anything needed add those(most important point for beginners)\n 8. and cook with a mideum heat until the rice is done fully.',
            style: TextStyle(color:ColorConstants.secondaryColor,
            fontSize: 20.0),),
          ),
          // editPost,
         ],
         ),
          ),
        ]
        ),
          ]
      ),
      ),
      
    );
  }

}

class Ingredients extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return new Container(
    transform: Matrix4.translationValues(20.0, 0.0, 0.0), 
    height: 10.0,
    width: 10.0,
    decoration: new BoxDecoration(
    color: Colors.black,
    shape: BoxShape.circle,
    ),
    );
  }

}