import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/services/firebaseApiService.dart';

//  import 'package:pavitras_kitchen/firebase_service.dart';
import 'package:pavitras_kitchen/utils/colors.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

final TextEditingController addNameController = TextEditingController();
final TextEditingController addIngredientsController = TextEditingController();
final TextEditingController addStepsController = TextEditingController();
 String dropdownValue = 'Breads';
 final listOfCategories = ["Breads", "Breakfast", "Desserts", "Dinner", "salads", "Drinks", "Lunch", "MianCourse", "Snacks", "Soups"];



class AddPost extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddPostState();
  }

}


class AddPostState extends State<AddPost>
{
  //  final listOfCategories = [" Breads", "Breakfast", "Desserts", "Dinner", "salads", "Drinks", "Lunch", "MianCourse", "Snacks", "Soups"];
  //  final dropdownValue = 'Breads';
  final  _formKey = GlobalKey<FormState>();
  final addName = TextFormField(
    controller: addNameController,
    decoration: InputDecoration(
       border: OutlineInputBorder(
       borderRadius: BorderRadius.all(Radius.circular(0.0)),
       borderSide: BorderSide(width: 1,
         color: ColorConstants.secondaryColor
       )
      ),
    ),
  );
  final imageContainer = Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: ColorConstants.secondaryColor
      )
    ),
    height: 100.0,
    width: 400.0,
    child: IconButton(icon: Icon(Icons.add), onPressed: (){}),
  );
  final ingredients = TextFormField(
    controller: addIngredientsController,
    maxLines: 99,
    decoration: InputDecoration(
        hintText: "Ingredients",
         border: OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(0.0))
         ),
    ),
  );
  final steps = TextFormField(
    controller: addStepsController,
     maxLines: 99,
    decoration: InputDecoration(
      hintText: "Add Steps",
      border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(0.0))
      ),
    ),
  );
  final addPost = RaisedButton(
    shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(18.0),
  side: BorderSide(color: ColorConstants.secondaryColor)
),
    color: ColorConstants.primaryColor,
    child: Text('Add',
    style: TextStyle(
      color: ColorConstants.secondaryColor
    ),),
    onPressed: (){
        getData();
      // updateData();
      // deleteData();
        // setData();
    }); 
  @override
  Widget build(BuildContext context) {
    final selectCategory = DropdownButtonFormField(
         value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      decoration: InputDecoration(
        labelText: "Select Category",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.0)
        )
        ),
      items: listOfCategories.map((label){
        return  DropdownMenuItem(
          child: Text(label),
          value: label);
      }).toList(),
      onChanged: (String newValue){
        setState(() {
          dropdownValue = newValue;
         
        }
        );
      },
    );
    
    return Scaffold(
       backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.secondaryColor,
        title: Text('AddPost',
        style: TextStyle(color: ColorConstants.primaryColor,
        fontSize: 20.0),),
      ),
      body: 
       Form(
        key: _formKey,
        child: ListView(children: <Widget>[
      Container(
        child:Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:170,
              top: 8.0, bottom: 8.0),
              child: Text('Recipe name',
              style: TextStyle(color:ColorConstants.secondaryColor,
              fontWeight: FontWeight.bold),)
            ),
            Padding(
              padding: const EdgeInsets.only(right:50.0,left: 50.0),
              child: addName,
            ),
            Padding(
              padding: const EdgeInsets.only(right:170,
              top: 8.0, bottom: 8.0),
              child: Text('Add image',
                style: TextStyle(color:ColorConstants.secondaryColor,
                fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right:50.0,left: 50.0),
              child: imageContainer,
            ),
            Padding(
              padding: const EdgeInsets.only(right:170,
              top: 8.0, bottom: 8.0),
              child: Text('Ingredients',
                style: TextStyle(color:ColorConstants.secondaryColor,
                fontWeight: FontWeight.bold),),
            ),
            Container(
              decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstants.secondaryColor
             ),
           ),
              height: 100.0,
              width: 280.0,
            margin: EdgeInsets.all(8.0),
            // padding: EdgeInsets.only(bottom: 20.0),
            child: ingredients,
           ),
           Padding(
             padding: const EdgeInsets.only(right:170,
              top: 8.0, bottom: 8.0),
             child: Text('Steps',
                style: TextStyle(color:ColorConstants.secondaryColor,
                fontWeight: FontWeight.bold),),
           ),
            Container(
              decoration: BoxDecoration(
               border: Border.all(
              color: ColorConstants.secondaryColor
            )
            ),
              height: 100.0,
              width: 280.0,
              margin: EdgeInsets.all(8.0),
              child: steps,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0),
                child: Text('Select Category', style: TextStyle(color:ColorConstants.secondaryColor,
                fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100, left: 100, top: 8.0),
                child: selectCategory,
              ),
              addPost,
          ],
        )
      )
        ]
        )
      )
      
      
    );

    
  }
  

}




