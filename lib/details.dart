import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/comments.dart';
import 'package:pavitras_kitchen/services/feedpostmodel.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:auto_size_text/auto_size_text.dart';


// import 'package:pavitras_kitchen/services/models.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class DetailScreen extends StatefulWidget {
  FeedPost post;

  DetailScreen({this.post});

  @override
  State<StatefulWidget> createState() {
    return DetailScreenState();
  }
}

class DetailScreenState extends State<DetailScreen> {
 

  @override
  Widget build(BuildContext context) {
     double cwidth = MediaQuery.of(context).size.width*0.8;
    
        return Scaffold(
          backgroundColor: ColorConstants.primaryColor,
          body: Container(
            child: ListView(
                // shrinkWrap: true,
                children: <Widget>[
                  Column(children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                       '${widget.post.recipeName}',
                      style: TextStyle(
                          color: ColorConstants.secondaryColor,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                        Padding(
                          padding: const EdgeInsets.only(left: 300.0),
                          child:
                              IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                        ),
                        Container(
                          height: 200.0,
                          width: 400.0,
                          child: Image.network(
                            //  'assets/images/image9.jpeg',
                               "${widget.post.recipeImage}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
                    
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Ingredients',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstants.secondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              fontFamily: 'GothamBold'
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                //  editData();
                              }),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.thumb_up,
                                     color: ColorConstants.secondaryColor,
                                  ),
                                  onPressed: () {},
                                ),
                                Text('+1'),
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.share,
                                   color: ColorConstants.secondaryColor,
                                ),
                                onPressed: () {},
                              ),
                              Text('+1'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.comment,
                                  color: ColorConstants.secondaryColor,
                                ),
                                onPressed: () {
                                   Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => CommentScreen()));
                                },
                              ),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                             Row(
                               children: <Widget>[
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10.0),
                                   child: Container(
                                     width: cwidth,
                                     child: Text("${widget.post.ingredients}",
                                          textAlign: TextAlign.left,
                                           style: TextStyle(
                                        color: ColorConstants.secondaryColor,
                                        fontSize: 20.0,
                                           ),
                                        ),
                                   ),
                                 ),
                               ],
                             ),
                            ]
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Steps to make veg pulao:',
                            style: TextStyle(
                                color: ColorConstants.secondaryColor,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'GothamBold'),
                          ),
                          IconButton(icon: Icon(Icons.edit), onPressed: () {})
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                          width: cwidth,
                          child: Text("${widget.post.steps}",
                           textAlign: TextAlign.left,
                            style: TextStyle(
                                color: ColorConstants.secondaryColor,
                                fontSize: 20.0),
                          ),
                        ),
                      ),
                      // editPost,
                    ],
                  ),
                ),
              ]),
            ]),
      ),
    );
  }
}

