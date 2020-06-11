import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class CommentScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
   
    return CommentScreenState();
  }
 
}

class CommentScreenState extends State<CommentScreen>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Container(
        child:ListView(
          children: <Widget>[
         Column(
          children: <Widget>[
            Image.asset('assets/images/image8.jpeg'),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0,),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image10.png'),
                    ),
                    title: Text('name'),
                    subtitle: Text('comment section'),
                  ),
                   ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image10.png'),
                    ),
                    title: Text('name'),
                    subtitle: Text('comment section'),
                  ),
                   ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image10.png'),
                    ),
                    title: Text('name'),
                    subtitle: Text('comment section'),
                  ),
                   ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image10.png'),
                    ),
                    title: Text('name'),
                    subtitle: Text('comment section'),
                  ),
                   ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image10.png'),
                    ),
                    title: Text('name'),
                    subtitle: Text('comment section'),
                  ),
                ],
                
              )
            )
          ]
         )
          ]
        )
      )
      
    );
  }

}


