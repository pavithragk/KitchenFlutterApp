import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          FutureBuilder(
            //  future: Provider.of(context).auth.getCurrentUserUID(),
            builder: (context, snapshot){
             if(snapshot.connectionState == ConnectionState.done){
               return Text("done");
             }else{
               return CircularProgressIndicator();
             }
            },
          )
        ],
      ),
    );
  }

}