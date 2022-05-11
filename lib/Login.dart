import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "App",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Inside(),
    );
  }
}
  class Inside extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      double width=MediaQuery.of(context).size.width;
      double height=MediaQuery.of(context).size.height;
      return Scaffold(
        appBar: AppBar(
          title: Text('Edtech'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.account_circle_sharp),
                onPressed:(){}
            ),
          ],
        ),
        body: Container(

          decoration: const BoxDecoration(

            image: DecorationImage(
                image: AssetImage("assets/images/bg1.jpg",
                ),
                fit: BoxFit.cover
        ),

          ),
        height:height ,
        width: width,
        child: SingleChildScrollView(
        child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    //Image.asset('assets/images/bg1.jpg'),
    SizedBox(
      height: 30,
    ),
  Text('Learn from the best to become the best',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    SizedBox(
      height: 30,
    ),
  // TextField(
  // decoration: InputDecoration(
  // hintText: "Enter email",
  // border: OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
  // suffixIcon: Icon(Icons.password),
  //
  // ),),
  // RaisedButton(onPressed: (){},
  // child: Text("Send Link"),
  // color: Color(0x242A93E3),),

  ],
  ),
  ),
  ),
  );
  }
  }
