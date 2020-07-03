// import 'dart:html';



import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:pavitras_kitchen/addpost.dart';
import 'package:pavitras_kitchen/homescreen.dart';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:pavitras_kitchen/services/feedpostmodel.dart';

import 'package:pavitras_kitchen/signup.dart';



final databaseReference = Firestore.instance;
final  storage = FirebaseStorage.instance;
FirebaseAuth firebaseAuth = FirebaseAuth.instance;

class FirebaseController {
  List<FeedPost> posts = [];

  void getData() async {
    databaseReference
        .collection("home")
        .document("SDRg8a48qViljze4hkhG")
        .collection("posts")
        .getDocuments()
        .then((querySnapshot) {
      querySnapshot.documents.forEach((result) {
        FeedPost fposts = FeedPost.fromJson(result.data);
        posts.add(fposts);
      });
    });
  }
 

  // Future<void>getImage(){
  //   var image = ImagePicker.pickImage(source: ImageSource.gallery);
    
  // }
  

    void createData() async {
      await databaseReference
          .collection("home")
          .document("SDRg8a48qViljze4hkhG")
          .collection("posts")
          .add({
        'category': 'salads',
        'ingredients': 'all the vegitables',
        'steps': 'cut and mix the all the vegies',
        'like': 'false',
        'recipeName': 'salads',
        'recipeImage': 'url',
        'comment': 'sfsf'
      }).then((value) {
        print(value.documentID);
      });
    }

    void updateData() async {
      await databaseReference
          .collection("home")
          .document('SDRg8a48qViljze4hkhG')
          .collection('posts')
          .document('4nY5x5LGMghKenSRSA6E')
          .updateData({
        'category': 'Drinks',
        'recipeName': 'cold coffee',
        'recipeImage': 'url',
        'ingredients': 'adsff',
        'steps': 'sfsff',
      }).then((result) {
        print("successfully updated!!");
      });
    }

    void deleteData() async {
      await databaseReference
          .collection('home')
          .document('SDRg8a48qViljze4hkhG')
          .collection('posts')
          .document('z9P8gmk051egGbcp8Jdj')
          .delete()
          .then((result) {
        print("successfully deleted!!");
      });
    }

    void editData() {
      databaseReference
          .collection("home")
          .document('SDRg8a48qViljze4hkhG')
          .collection('posts')
          .document('4nY5x5LGMghKenSRSA6E')
          .get()
          .then((value) {
        print(value.data);
      });
    }

    void setData() async {
      String fileName = basename(fileImage.path);
      StorageTaskSnapshot snapshot = await storage
              .ref()
              .child(fileName)
              .putFile(fileImage)
              .onComplete;
              final String url = (await snapshot.ref.getDownloadURL());
              print("URL is $url");
              await databaseReference
              .collection("home")
              .document("SDRg8a48qViljze4hkhG")
              .collection("posts")
              .document()
              .setData({
              "recipeName": recipeNameController.text,
              "ingredients": addIngredientsController.text,
             "steps": addStepsController.text,
             "category": dropdownValue,
             "recipeImage": url,
             }).then((result) {
             print("successfully added!!");
            });
          }
       void getUserData()async{
       await databaseReference
       .collection("users")
       .getDocuments()
       .then((querySnapshot){
        querySnapshot.documents.forEach((result){
        print(result.data);
      });
    });
    
  }

  Future<String> getCurrentUID()async{
    return (await firebaseAuth.currentUser()).uid;
    
  }

  // void getName()async{
  //   final FirebaseUser user = await FirebaseAuth.instance.currentUser();
  //   final currentUserId = user.uid;
  //   await databaseReference
  //   .collection("users")
  //   .document(currentUserId)
  //   .get()
  //   .then((DocumentSnapshot userSnapshot) => {
  //      print(userSnapshot["uid"])

  //   });
  // }
  

  // void registerToFb( BuildContext context) async{
  //   firebaseAuth
  //       .createUserWithEmailAndPassword(
  //           email: emailController.text, password: passwordController.text)
  //       .then((result) async {
  //       //  String fileName = basename(fileImage.path);
  //       // StorageTaskSnapshot snapshot = await storage
  //       // .ref()
  //       // .child(fileName)
  //       // .putFile(fileImage)
  //       // .onComplete;
  //       // final String url = (await snapshot.ref.getDownloadURL());
  //     // print("URL is $url");
  //     databaseReference.collection("users").document(result.user.uid).setData({
  //       "email": emailController.text,
  //       "phonenumber": phoneController.text,
  //       "name": nameController.text,
  //       "uid": result.user.uid,
  //       "profilePicture": url
  //     }).then((res) {
  //       print("res");
  //           Navigator.pushReplacement(
  //            context,
  //          MaterialPageRoute(builder: (context) => HomeScreen(uid:result.user.uid)),
  //         );
  //     });
  //   }).catchError((err) {
  //           showDialog(
  //               context: context,
  //         builder: (BuildContext context) {
  //           return AlertDialog(
  //             title: Text("Error"),
  //             content: Text(err.message),
  //             actions: [
  //               FlatButton(
  //                 child: Text("Ok"),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               )
  //             ],
  //           );
  //         });
  //   });
}


