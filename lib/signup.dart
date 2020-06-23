import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/addpost.dart';
import 'package:pavitras_kitchen/homescreen.dart';
import 'package:pavitras_kitchen/services/firebaseApiController.dart';
// import 'package:pavitras_kitchen/services/firebaseauth.dart';
import 'package:pavitras_kitchen/utils/colors.dart';
import 'package:validators/validators.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
 

class SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();
  bool obsecureText = true;

  @override
  Widget build(BuildContext context) {
    final name = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your name';
        }
        var text =
            (!isAlpha(value.toString())) ? " enter only alphabates" : null;
        return text;
      },
      controller: nameController,
      decoration: InputDecoration(
        labelText: 'name',
        labelStyle:
            TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0),
        fillColor: ColorConstants.primaryColor,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Enter your name",
        hintStyle: TextStyle(color: ColorConstants.secondaryColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final phoneNumber = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your phonenumber';
        }
        var text = (!isNumeric(value.toString()))
            ? " enter valid mobile number"
            : null;
        return text;
      },
      controller: phoneController,
      decoration: InputDecoration(
        labelText: 'phone number',
        labelStyle:
            TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0),
        fillColor: ColorConstants.primaryColor,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Enter your number",
        hintStyle: TextStyle(color: ColorConstants.secondaryColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final emailField = TextFormField(
      // validator: (value) {
      //   if (value.isEmpty) {
      //     return 'Please enter your email';
      //   }
      //   var text = (!isAlpha(value.toString())) ? "enter a valid e-mail" : null;
      //   return text;
      // },
      controller: emailController,
      decoration: InputDecoration(
        labelText: 'email',
        labelStyle:
            TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0),
        fillColor: ColorConstants.primaryColor,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "aenter your email",
        hintStyle: TextStyle(color: ColorConstants.secondaryColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final passwordField = TextFormField(
      obscureText: obsecureText,
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your email';
        }
        var text = (!isAlphanumeric(value.toString()))
            ? "enter a valid password"
            : null;
        return text;
      },
      controller: passwordController,
      decoration: InputDecoration(
        labelText: 'password',
        suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(end: 12.0),
            child: IconButton(
                icon: (Icon(Icons.lock)),
                onPressed: () {
                  setState(() {
                    obsecureText = !obsecureText;
                  });
                })),
        labelStyle:
            TextStyle(color: ColorConstants.secondaryColor, fontSize: 20.0),
        fillColor: ColorConstants.primaryColor,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "enter your password",
        hintStyle: TextStyle(color: ColorConstants.secondaryColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final signUpButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: ColorConstants.secondaryColor,
      child: Builder(
        builder: (context) {
          return MaterialButton(
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                // registerToFb();
                controller.getUserData();
              }
            },
            child: Text(
              "Sign Up",
              textAlign: TextAlign.center,
            ),
            textColor: ColorConstants.primaryColor,
          );
        },
      ),
    );
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: Text('Sign Up',
            style: TextStyle(color: ColorConstants.secondaryColor)),
      ),
      body: Builder(builder: (context) {
        return Form(
          key: _formKey,
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image4.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(children: <Widget>[
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, right: 50.0, left: 50.0),
                  child: ListView(children: <Widget>[
                    Text(
                      'Sign Up here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: ColorConstants.secondaryColor, fontSize: 20.0),
                    ),
                    SizedBox(height: 15.0),
                    Column(children: <Widget>[
                      name,
                      SizedBox(height: 15.0),
                      phoneNumber,
                      SizedBox(height: 15.0),
                      emailField,
                      SizedBox(height: 15.0),
                      passwordField,
                      SizedBox(height: 15.0),
                      signUpButton,
                    ])
                  ]),
                ))
              ])),
        );
      }),
    );
  }
  void registerToFb() {
    firebaseAuth
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((result) {
      databaseReference.collection("users").document(result.user.uid).setData({
        "email": emailController.text,
        "phonenumber": phoneController.text,
        "name": nameController.text,
        "uid": result.user.uid,
      }).then((res) {
        print("res");
            // Navigator.pushReplacement(
            //           context,
            //     MaterialPageRoute(builder: (context) => HomeScreen(uid:result.user.uid)),
            //   );
      });
    }).catchError((err) {
            showDialog(
                context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(err.message),
              actions: [
                FlatButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });
  }

  // @override
  // void dispose() {
  //    super.dispose();
  //   nameController.dispose();
  //   emailController.dispose();
  //   passwordController.dispose();
  //   phoneController.dispose();
  // }
}

