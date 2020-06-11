import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class WelcomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return WelcomeScreenState();
  }

}

class WelcomeScreenState extends State<WelcomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: ColorConstants.primaryColor,
       body: Container(
       height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
         child: Stack(
          children: <Widget>[
            Positioned(child: Container(
              decoration: BoxDecoration(
             image: DecorationImage(
            image: AssetImage('assets/images/image1.jpg'),
            fit: BoxFit.cover,
            ),
            ),
            ),
            ),
            Positioned(
             top: 300.0,
             left: 80.0,  
            child:Text(
              "Pavitra's Kitchen",style: TextStyle(
                fontFamily: 'Gotham Bold',
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: ColorConstants.primaryColor,
              ),
             ),
            ),
            Positioned(
              top: 550.0,
              left: 100.0,
              child: Row(children: <Widget>[
              RaisedButton(onPressed: (){},
              color: ColorConstants.primaryColor,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: BorderSide(color: ColorConstants.secondaryColor)
               ),
               child: Text('Login',
               style: TextStyle(color: ColorConstants.secondaryColor),),),
               Padding(
                 padding: const EdgeInsets.only(left: 20.0),
                 child: RaisedButton(onPressed: (){},
                 color: ColorConstants.primaryColor,
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
                 side: BorderSide(color: ColorConstants.secondaryColor)
                  ),
                 child: Text('Sign Up',
                 style: TextStyle(color: ColorConstants.secondaryColor),),),
               ),

            ],))
            
          ],
          
        ),
      ),
    );
  }
  
}