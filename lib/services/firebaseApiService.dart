

// import 'dart:html';

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/addpost.dart';
import 'package:pavitras_kitchen/services/models.dart';
 final databaseReference = Firestore.instance;
  



void getData() async {
   databaseReference
      .collection("home")
      .document("SDRg8a48qViljze4hkhG")
      .collection("posts")
       .getDocuments()
       .then((querySnapshot){
         querySnapshot.documents.forEach((result){
           print(result.data);
         });
         List<FeedPost> posts =[];
         var result;
                  final feedData = json.decode(result);
         FeedPost fposts = FeedPost.fromJson(feedData);
         posts.add(fposts);

       });
       
         
       
     
    

    // List<FeedPost> posts =[];
    
    //     final parsed = json.decode().cast<Map<String,dynamic>>();
    // return parsed.map<FeedPost>((json)=> FeedPost.fromJson(json)).toList();





// firestoreInstance.collection("users").getDocuments().then((querySnapshot) {
//     querySnapshot.documents.forEach((result) {
//       print(result.data);
//     });
//   });









void createData() async{
  await 
  databaseReference
  .collection("home")
  .document("SDRg8a48qViljze4hkhG")
  .collection("posts")
  .add({

    'category': 'salads',
    'ingredients': 'all the vegitables',
    'steps': 'cut and mix the all the vegies',
    'like' : 'false',
    'recipeName': 'salads',
    'recipeImage' : 'url',
    'comment': 'sfsf'

  }).then((value){
    print(value.documentID);
  });
  
}


void updateData() async{
  
  await databaseReference.collection("home")
  .document('SDRg8a48qViljze4hkhG')
  .collection('posts')
  .document('4nY5x5LGMghKenSRSA6E')
  .updateData({
    'category': 'Drinks',
    'recipeName':'cold coffee',
    'recipeImage':'url',
    'ingredients': 'adsff',
    'steps' : 'sfsff',
  }).then((result){
  print("successfully updated!!");
  });
}


void deleteData() async{
  await databaseReference.collection('home')
  .document('SDRg8a48qViljze4hkhG')
  .collection('posts')
  .document('z9P8gmk051egGbcp8Jdj')
  .delete().then((result)
{
  print("successfully deleted!!");
} );   
}

 void editData(){
    databaseReference.collection("home").document('SDRg8a48qViljze4hkhG').collection('posts')
     .document('4nY5x5LGMghKenSRSA6E')
    .get().then((value){
      print(value.data);
    }); 
 }
 

  void setData() async{
 
      await databaseReference
      .collection("home")
      .document("SDRg8a48qViljze4hkhG")
      .collection("posts")
      .document()
      .setData({
        "addName" : addNameController.text,
        "ingredients" : addIngredientsController.text,
        "steps" : addStepsController.text,
        "category" : dropdownValue,
      }).then((result){
       print("successfully added!!");
    }); 
  
  }
}







