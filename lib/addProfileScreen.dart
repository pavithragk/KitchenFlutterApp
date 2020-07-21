import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:pavitras_kitchen/addpost.dart';
import 'package:pavitras_kitchen/homescreen.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class AddProfileScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddProfileScreenState();
  }

}
File _image;


class AddProfileScreenState extends State<AddProfileScreen>{
  @override
  Widget build(BuildContext context) {

    Future uploadPic(BuildContext context)async{
    String fileName = basename(_image.path);
    StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    setState(() {
      print("profile picture uploaded");
       Scaffold.of(context).showSnackBar(SnackBar(content: Text('profile picture uploaded')));
    });
  

}
   Future<void> getImage() async {
       var image = await ImagePicker.pickImage(source: ImageSource.gallery);
       setState(() {
        _image = image;
        print('image path $_image');
       });
       }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(child:
            Container(
              height: 200.0,
              width: 400.0,
             decoration: BoxDecoration(border: Border.all(color: ColorConstants.secondaryColor)),
             child:_image == null ? Icon(Icons.add):
             Image.file(_image, fit: BoxFit.cover),
             ),
             onTap:(){
                getImage();
                }
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 children: <Widget>[
                   RaisedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                   },
                   color: ColorConstants.primaryColor,
                   child: Text("Skip", style: TextStyle(color: ColorConstants.secondaryColor,
                   ),),),
                    RaisedButton(onPressed: (){
                      // uploadPic(context);
                    //  controller.registerToFb(context);
                   },
                   child: Text("Sign Up",
                   style: TextStyle(color: ColorConstants.secondaryColor),),
                   color: ColorConstants.primaryColor,
                   ),
                 ],
               ),
             )
          ],
        ),
        ),
    );
  }

}
