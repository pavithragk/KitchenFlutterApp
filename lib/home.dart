

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

  @override
  void initState() {
  
    controller.getData();
    super.initState();
     controller.setData();
  }

  @override
  Widget build(BuildContext context)
  {
      
   return Container(
       color: Colors.white,
      child: ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            return FeedCard(post: controller.posts[index]);
          }),
    
    );
     
  }
}