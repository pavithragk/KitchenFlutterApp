

import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/addpost.dart';
import 'package:pavitras_kitchen/comments.dart';
import 'package:pavitras_kitchen/details.dart';
import 'package:pavitras_kitchen/services/feedpostmodel.dart';
import 'package:pavitras_kitchen/services/usermodel.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class FeedCard extends StatefulWidget {
  FeedPost post = FeedPost();
   
    FeedCard({this.post});

  @override
  State<StatefulWidget> createState() => FeedCardState();
}

class FeedCardState extends State<FeedCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "${widget.post.recipeName}",
              style: TextStyle(
                  color: ColorConstants.secondaryColor, fontSize: 20.0),
            ),
            GestureDetector(
              child: Container(height: 200.0,
                      width: 400.0,
                      //  decoration:
                        // BoxDecoration(border: Border.all(color: ColorConstants.secondaryColor)),
            child: Image.network(
            "${widget.post.recipeImage}",
              fit: BoxFit.cover,
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress){
               if (loadingProgress==null)return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes!= null ?
                    loadingProgress.cumulativeBytesLoaded/loadingProgress.expectedTotalBytes
                    :null,
                  ),
                );
              },
              ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(post: widget.post)),
                );
              },
            ),
            Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
                IconButton(icon: Icon(Icons.send), onPressed: () {
                }),
              ],
            ),
          ]),
    ));
  }
}
