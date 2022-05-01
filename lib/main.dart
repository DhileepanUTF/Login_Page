import 'package:flutter/material.dart';
import 'package:untitled1/Forgot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "App",
        theme: ThemeData(primarySwatch: Colors.green),
        home:Homepage(),
    );
  }
}

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child:Column(
            //mainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height*0.25,
                ),
              Padding(padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              ),
              ),
              SizedBox(
                width: width*0.85,
                child:TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(15),)
                ),
              ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: width*0.85,
                child:TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.password_outlined),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(15),)
                ),
              ),),
              Padding(padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  TextButton(
                    onPressed: () {
                      //action
                      //Forgot();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot(),));
                    },
                    child: Text(
                      'Forgot password', //title
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 11),//aligment
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RaisedButton(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          child: Text('Login'),
                          color: Color(0xffEE7B23),
                          onPressed: (){},
                        ),
                      ],

                  ),),




                  //Text('Forgot Password', style: TextStyle(fontSize: 13),),


                ],
              ),
              ),
              RaisedButton(
                child: Text('Sign Up'),
                color: Color(0x0000002d),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()),);
                },)

            ],
          )
        ),
      ),
    );

  }
}

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child:Column(
            children: [
              Container(
                width: width,
                height: height*0.25,
              ),
              Padding(padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Signup',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
              SizedBox(
                width: width*0.85,
                child:TextField(
                decoration: InputDecoration(
                  hintText: "Enter email or name",
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(10),),

                  suffixIcon: Icon(Icons.abc_rounded),

                ),

              ),
              ),
              SizedBox(height: 25),
              SizedBox(
                  width: width*0.85,
                  child:TextField(
                  obscureText: true,

                  decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
                  suffixIcon: Icon(Icons.password),

                ),

              )),
              SizedBox(height: 25),
              SizedBox(
                width: width*0.85,
                child:TextField(

                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
                  suffixIcon: Icon(Icons.password),

                ),

              ),),
              SizedBox(height: 25),
              SizedBox(height: 25),
              RaisedButton(
                child: Text("Signup"),
                color: Color(0xFF0bb059),
                onPressed: (){},)
            ],

          ) ,
        ),
      ),
    );
  }
}

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
              SizedBox(height: height*0.4,),
              Text('Enter Your email to get password reset',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

              SizedBox(height: 20,),
              SizedBox(
                width: width*0.85,
                child:TextField(
                decoration: InputDecoration(
                  hintText: "Enter email",
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
                  suffixIcon: Icon(Icons.mark_email_read),

                ),),
              ),
              SizedBox(height: 20,),
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

