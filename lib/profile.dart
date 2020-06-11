import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/utils/colors.dart';
import 'package:validators/validators.dart';

class ProfileScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return ProfileScreenState();
  }

}

class ProfileScreenState extends State<ProfileScreen>
{
final TextEditingController nameController = TextEditingController();
final TextEditingController phoneController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController changeController = TextEditingController();
final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final name = TextFormField(
      validator: (value){
        if(value.isEmpty)
        {
          return 'please enter your name';
        }
        var text = (!isAlpha(value.toString()))
            ? 'enter a valid name'
            : null;
            return text;
      },
      controller: nameController,
    decoration: InputDecoration(
      labelText: 'Name',
      labelStyle: TextStyle(color:ColorConstants.secondaryColor),
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      border: OutlineInputBorder(
        borderSide: BorderSide(
            color: ColorConstants.secondaryColor,
          ),
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
      )
    ),
    ),
  );
  final phoneNumber = TextFormField(
    validator: (value){
        if(value.isEmpty)
        {
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
      labelStyle: TextStyle(color:ColorConstants.secondaryColor),
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      border: OutlineInputBorder(
        borderSide: BorderSide(
            color: ColorConstants.secondaryColor,
          ),
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
      )
    ),
    ),
  );
  final emailField = TextFormField(
    validator: (value){
        if(value.isEmpty)
        {
          return 'please enter your email';
        }
        var text = (!isAlphanumeric(value.toString()))
            ? 'enter a valid email'
            : null;
            return text;
      },
    controller: emailController,
    decoration: InputDecoration(
      labelText: 'Email',
      labelStyle: TextStyle(color:ColorConstants.secondaryColor),
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      border: OutlineInputBorder(
        borderSide: BorderSide(
            color: ColorConstants.secondaryColor,
          ),
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
      )
    ),
    ),

  );
  final changePassword = TextFormField(
    validator: (value){
        if(value.isEmpty)
        {
          return 'please enter your password';
        }
        var text = (!isAlpha(value.toString()))
            ? 'enter a valid password'
            : null;
            return text;
      },
    controller: changeController,
    decoration: InputDecoration(
      labelText: 'Change password',
      labelStyle: TextStyle(color:ColorConstants.secondaryColor),
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      border: OutlineInputBorder(
        borderSide: BorderSide(
            color: ColorConstants.secondaryColor,
          ),
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
      )
    ),
    ),

  );
  final submitButton = Material(
    elevation: 5.0,
        borderRadius: BorderRadius.circular(0.0),
        color: ColorConstants.secondaryColor,
        child: Builder(builder: (context) {
          return MaterialButton(onPressed: (){
            if (_formKey.currentState.validate()) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('Saving data'),
              ),
            );
          }
          },
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          child:Text(
              'Save',
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
        leading: IconButton(
       icon: Icon(Icons.arrow_back, color: ColorConstants.secondaryColor),
        onPressed: () => Navigator.of(context).pop(),
        ), 
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 400.0,
              color: ColorConstants.secondaryColor,
               child: Padding(
               padding: const EdgeInsets.only(left: 20.0, top: 30.0,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Text('Edit profile', style: TextStyle(color: ColorConstants.primaryColor,
                       fontWeight: FontWeight.bold),
                       textAlign: TextAlign.end,),
                    ),
                    CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/images/image5.jpg'),
                        ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(child: Text("Pavitra's kitchen",
                           style: TextStyle(color:ColorConstants.primaryColor),)),
                         ),
                  ],
                ),
               ),
            ),
            Form(key: _formKey,
              child:
                       Expanded(
                         child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20.0,),
                                name,
                         SizedBox(height: 20.0,),
                         phoneNumber,
                         SizedBox(height: 20.0,),
                         emailField,
                         SizedBox(height: 20.0,),
                         changePassword,
                         SizedBox(height: 20.0,),
                         submitButton
                     
                     ]
                            ),
                          )
                        ]
                           
                         ),
                       ),
                       )
          ],
        ),
      ),
    );
  }

}