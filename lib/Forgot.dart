import 'package:flutter/material.dart';

class Forgot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height:height ,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Enter Your email to get password reset',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextField(
                decoration: InputDecoration(
                hintText: "Enter email",
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
                suffixIcon: Icon(Icons.password),

              ),),
              RaisedButton(onPressed: (){},
                child: Text("Send Link"),
                color: Color(0x242A93E3),),

            ],
          ),
        ),
      ),
    );
  }
}