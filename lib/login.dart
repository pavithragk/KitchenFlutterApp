import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pavitras_kitchen/signup.dart';
import 'package:pavitras_kitchen/utils/colors.dart';
import 'package:validators/validators.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool obSecureText = true;

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
    // onSaved: (),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your email';
        }
       var text = (!isAlpha(value.toString()))
           ? "Enter a valid email"
           : null;
        return text;
      },
      controller: emailController,
      decoration: InputDecoration(
        labelText: 'name',
        labelStyle: TextStyle(color:ColorConstants.secondaryColor,fontSize: 20.0),
        fillColor: ColorConstants.primaryColor,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
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
      obscureText: obSecureText,
      validator: (value) {
        if (value.isEmpty) {
          return 'enter your password';
        }
        var text = (!isAlphanumeric(value.toString()))
            ? "enter a valid passowrd"
            : null;
        return text;
      },
      controller: passwordController,
      decoration: InputDecoration(
        suffixIcon: Padding(
        padding: const EdgeInsetsDirectional.only(end: 12.0),
        child: IconButton(
          icon: (Icon(Icons.lock)), onPressed: (){
            setState(() {
              obSecureText =!obSecureText;
            });
          })
        ),
        labelText: 'password',
        labelStyle: TextStyle(color:ColorConstants.secondaryColor,fontSize: 20.0),
        fillColor: ColorConstants.primaryColor,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        hintStyle: TextStyle(color: ColorConstants.secondaryColor),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.secondaryColor,
            ),
            borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: ColorConstants.secondaryColor,
        child: Builder(builder: (context) {
          return MaterialButton(
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Processing data'),
                  ),
                );
              }
              Navigator.push (
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
               );
              // print(emailController.text);
              // print(passwordController.text);
            },
            child: Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstants.primaryColor,
              ),
            ),
          );
        })
        );

    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: Text('Login',
            style: TextStyle(color: ColorConstants.secondaryColor)),
      ),
      body: Builder(
      builder: (context) {
        return Form(
          key: _formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
             image: DecorationImage(
            image: AssetImage('assets/images/image2.jpg'),
            fit: BoxFit.cover,
            ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(child: ListView(children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0, left: 50.0,
                    right: 50.0),
                    child: Column(
                      children: <Widget>[
                        Text('Login Here',
                         style: TextStyle(color:ColorConstants.primaryColor, fontSize: 20.0),),
                        SizedBox(
                    height: 25.0),
                        Column(
                        children: <Widget>[
                        emailField,
                        SizedBox(
                    height: 25.0),
                    passwordField,
                    SizedBox(
                     height: 25.0),
                     loginButton,
                      ],
                    ),
                      ],
                    ),
                  ),
                
                ),
                ]
                )
                ),
              ],
            ),
          ),
        );
      },
      ),
     
    );
  }
}
