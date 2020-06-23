


import 'dart:io';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pavitras_kitchen/services/firebaseApiController.dart';
import 'package:pavitras_kitchen/utils/colors.dart';


 File fileImage;
final TextEditingController addNameController = TextEditingController();
final TextEditingController addIngredientsController = TextEditingController();
final TextEditingController addStepsController = TextEditingController();
 FirebaseController controller = FirebaseController();
String dropdownValue = 'Breads';
final listOfCategories = [
  "Breads",
  "Breakfast",
  "Desserts",
  "Dinner",
  "salads",
  "Drinks",
  "Lunch",
  "MianCourse",
  "Snacks",
  "Soups"
];


class AddPost extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
   
    return AddPostState();
  }
}


class AddPostState extends State<AddPost> {
  
  final _formKey = GlobalKey<FormState>();
  final addName = TextFormField(
    controller: addNameController,
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
          borderSide:
              BorderSide(width: 1, color: ColorConstants.secondaryColor)),
    ),
  );
    final ingredients = TextFormField(
    controller: addIngredientsController,
    maxLines: 99,
    decoration: InputDecoration(
      hintText: "Ingredients",
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0))),
    ),
  );
  final steps = TextFormField(
    controller: addStepsController,
    maxLines: 99,
    decoration: InputDecoration(
      hintText: "Add Steps",
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0))),
    ),
  );
  final addPost = RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: ColorConstants.secondaryColor)),
      color: ColorConstants.primaryColor,
      child: Text(
        'Add',
        style: TextStyle(color: ColorConstants.secondaryColor),
      ),
      onPressed: () {
        // updateData();
        // deleteData();
         controller.setData();
      });

  @override
  Widget build(BuildContext context) {
   Future<void>getImage()async{
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
    fileImage = image;
     print('image path is $fileImage');
    });
  }
    final selectCategory = DropdownButtonFormField(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      decoration: InputDecoration(
          labelText: "Select Category",
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))),
      items: listOfCategories.map((label) {
        return DropdownMenuItem(child: Text(label), value: label);
      }).toList(),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
    );

    return Scaffold(
        backgroundColor: ColorConstants.primaryColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.secondaryColor,
          title: Text(
            'AddPost',
            style:
                TextStyle(color: ColorConstants.primaryColor, fontSize: 20.0),
          ),
        ),
        body: Form(
            key: _formKey,
            child: ListView(children: <Widget>[
              Container(
                  child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 170, top: 8.0, bottom: 8.0),
                      child: Text(
                        'Recipe name',
                        style: TextStyle(
                            color: ColorConstants.secondaryColor,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0, left: 50.0),
                    child: addName,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 170, top: 8.0, bottom: 8.0),
                    child: Text(
                      'Add image',
                      style: TextStyle(
                          color: ColorConstants.secondaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0, left: 50.0),
                    child: Container(
                      height: 200.0,
                      width: 400.0,
                      decoration:
                       BoxDecoration(border: Border.all(color: ColorConstants.secondaryColor)),
                      child: fileImage == null
                      ? Container(alignment: Alignment.center,
                      child: RaisedButton(onPressed: getImage,
                      child: Text('upload image'),
                      ),)
                      : Container(
                        child: Image.file(fileImage,
                        fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 170, top: 8.0, bottom: 8.0),
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                          color: ColorConstants.secondaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.secondaryColor),
                    ),
                    height: 100.0,
                    width: 280.0,
                    margin: EdgeInsets.all(8.0),
                    // padding: EdgeInsets.only(bottom: 20.0),
                    child: ingredients,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 170, top: 8.0, bottom: 8.0),
                    child: Text(
                      'Steps',
                      style: TextStyle(
                          color: ColorConstants.secondaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorConstants.secondaryColor)),
                    height: 100.0,
                    width: 280.0,
                    margin: EdgeInsets.all(8.0),
                    child: steps,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Text(
                      'Select Category',
                      style: TextStyle(
                          color: ColorConstants.secondaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 100, left: 100, top: 8.0),
                    child: selectCategory,
                  ),
                  addPost,
                ],
              ))
            ])));
  }
}

