import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class SearchScreen extends StatefulWidget{
  
  //  final String data;
  //  SearchScreen(this.data);


  @override
  State<StatefulWidget> createState() {
    
    return SearchStateScreen();
  }

}

class SearchStateScreen extends State<SearchScreen>
{
   
  final TextEditingController serachController = TextEditingController();


  @override
  Widget build(BuildContext context) {
   
   final searchField = TextFormField(
     controller: serachController,
     decoration: InputDecoration(
       hintText: 'search here....',
       labelText: 'search',
       labelStyle: TextStyle(
         color: ColorConstants.secondaryColor,
         fontSize: 20.0
       ),
       prefix: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Icon(Icons.search,
         color: ColorConstants.secondaryColor,),
       ),
       border: OutlineInputBorder(
         borderRadius: const BorderRadius.all(const Radius.circular(0.0))
       ),
     ),

   );
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        leading: IconButton(
       icon: Icon(Icons.arrow_back, color: ColorConstants.secondaryColor),
        onPressed: () => Navigator.of(context).pop(),
        ), 
        backgroundColor: ColorConstants.primaryColor,
        title: Text('search', style: TextStyle(
          color: ColorConstants.secondaryColor
        ),),
      ),
      body:
       Column(
        children: <Widget>[
            // Text('widget.data'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: searchField,
          ),
         ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
            const Text("Post 1"),
            const Text('Post 2'),
            const Text('Post 3'),
            const Text('Post 4'),
          ],
        )
        ],
      ),
    );
  }

}