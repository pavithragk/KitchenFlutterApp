import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pavitras_kitchen/addpost.dart';
import 'package:pavitras_kitchen/login.dart';
import 'package:pavitras_kitchen/services/firebaseApiController.dart';
import 'package:pavitras_kitchen/utils/colors.dart';
import 'package:validators/validators.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}


class ProfileScreenState extends State<ProfileScreen> {
  File _image;
  
  
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController changeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String displayName;
  String displayPhoneNumber;
  String displayEmail;
  String displayPassword;

  Future<FirebaseUser> user = firebaseAuth.currentUser();

  

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
    final name = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'please enter your name';
        }
        var text = (!isAlpha(value.toString())) ? 'enter a valid name' : null;
        return text;
      },
      controller: nameController,
      decoration: InputDecoration(
        labelText: 'Name',
        labelStyle: TextStyle(color: ColorConstants.secondaryColor),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.secondaryColor,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(0.0),
            )),
      ),
    );
    final phoneNumber = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'please enter your phone number';
        }
        var text = (!isNumeric(value.toString()))
            ? 'enter a valid phone number'
            : null;
        return text;
      },
      controller: phoneController,
      decoration: InputDecoration(
        labelText: 'PhoneNumber',
        labelStyle: TextStyle(color: ColorConstants.secondaryColor),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.secondaryColor,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(0.0),
            )),
      ),
    );
    final emailField = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'please enter your email';
        }
        var text =
            (!isAlphanumeric(value.toString())) ? 'enter a valid email' : null;
        return text;
      },
      controller: emailController,
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(color: ColorConstants.secondaryColor),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.secondaryColor,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(0.0),
            )),
      ),
    );
    final changePassword = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'please enter your password';
        }
        var text =
            (!isAlpha(value.toString())) ? 'enter a valid password' : null;
        return text;
      },
      controller: changeController,
      decoration: InputDecoration(
        labelText: 'Change password',
        labelStyle: TextStyle(color: ColorConstants.secondaryColor),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.secondaryColor,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(0.0),
            )),
      ),
    );
    final submitButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(0.0),
        color: ColorConstants.secondaryColor,
        child: Builder(builder: (context) {
          return MaterialButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Saving data'),
                  ),
                );
              }
              uploadPic(context);
            },
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            child: Text(
              'Save',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstants.primaryColor,
              ),
            ),
          );
        }));

        final logout = Material(
          borderRadius: BorderRadius.circular(0.0),
          color: ColorConstants.secondaryColor,
          child: Builder(builder: (context) {
          return MaterialButton(
            onPressed: () {
              FirebaseAuth auth = FirebaseAuth.instance;
              auth.signOut().then((res){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) => Login()),
                );

              });
            },
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            child: Text(
              'Logout',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstants.primaryColor,
              ),
            ),
          );
        }
        ),
        
        );

        Future<void> getImage() async {
       var image = await ImagePicker.pickImage(source: ImageSource.gallery);
       setState(() {
        _image = image;
        print('image path $_image');
       });
       }
      return  Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 400.0,
              color: ColorConstants.secondaryColor,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 30.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Container(
                        child:
                        InkWell(child:Text(
                          'Edit profile',
                          style: TextStyle(
                              color: ColorConstants.primaryColor,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.end,
                        ),
                        
                        ),
                      ),
                    ),
                    GestureDetector(child:
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: ColorConstants.primaryColor,
                      child: ClipOval(
                        child: SizedBox(
                          width: 180.0,
                          height: 180.0,
                          child: _image == null ? Icon(Icons.add):
                           Image.file(_image,fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    onTap: getImage,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Text(
                        "Pavitra's kitchen",
                        style: TextStyle(color: ColorConstants.primaryColor),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Expanded(
                child: ListView(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      name,
                      SizedBox(
                        height: 20.0,
                      ),
                      phoneNumber,
                      SizedBox(
                        height: 20.0,
                      ),
                      emailField,
                      SizedBox(
                        height: 20.0,
                      ),
                      changePassword,
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          submitButton,
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: logout,
                          ),
                        ],
                      ),
                    ]),
                  )
                ]),
              ),
            )
          ],
        ),
    );



   
  //  setState(() {
  //    userSnapshot = userSnapshot.data;
  //  });

      // return Scaffold(
      //    body: Container(
      //      child: Column(
      //        children: <Widget>[
      //       // Text("${userSnapshot["email"]}"),
      //       Text("text1"),
      //       Text("text1"),
      //       Text("text1"),
      //       RaisedButton(onPressed: (){
      //        getName();
      //       })
      //     ],
      //   ),
      // ),
      

      
    // );
   
}

// void getName()async{
//      final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final currentUserId = user.uid;
//     await databaseReference
//     .collection("users")
//     .document(currentUserId)
//     .get()
//     .then((DocumentSnapshot userSnapshot) => {
//          print(userSnapshot["email"])
       
//     }
    
//     );
//   }

}
