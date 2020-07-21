

import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/card.dart';
import 'package:pavitras_kitchen/services/firebaseApiController.dart';
import 'package:pavitras_kitchen/utils/colors.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return HomeState();
  }
}

class HomeState extends State<Home>{
  FirebaseController controller = FirebaseController();
   bool _progressController = true;

  @override
  void initState() {
  
    controller.getData();
    super.initState();
     controller.setData();
     
  }
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
      // _progressController = false;
   }

  @override
  Widget build(BuildContext context)
  {
   
return FutureBuilder(
  future: controller.getData(),
  builder: (context, snapshot){
    if(snapshot.data!=null){
    return Container(
       color: Colors.white,
      child: ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
             return FeedCard(post: controller.posts[index]);
          }),
    );
    }
    return CircularProgressIndicator();
  });
    
  }
}