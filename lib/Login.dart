// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_application/ListDemo.dart';
import 'package:flutter_application/Signup.dart';

import 'package:flutter_application/home.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginApp(),
    );
  }
}

class LoginApp extends StatefulWidget{
  @override
  LoginAppState createState() => LoginAppState();
}

class LoginAppState extends State<LoginApp>{

  GlobalKey<FormState> formkey = new GlobalKey();
  late String sEmail , sPassword;

 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 225, 216, 253),
          
          title: Text("LoginPage",style: TextStyle(color: Colors.black,fontSize: 20),
          ),
        leading: IconButton(
          onPressed: () {
            print("Back event ");
          },
         icon: Icon(Icons.arrow_back),
         ) ,
        ),
        body: Container(
          child: Column(
            children: [
              Form(
                key: formkey,
                child: Column(children: [

                 Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Image.asset("assets/images/images.png",width: 150,height: 150),
                ),
              ),
              Padding(
               
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter email Id",
                    prefixIcon: Icon(Icons.email),
                  ),
                 
                  validator: (emailinput) {
                    if(emailinput!.isEmpty || emailinput == "" ){
                      return " email id requried";
                    }
                    else if(!RegExp(r"[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]").hasMatch(emailinput)){
                      return " emaild id not match "; 

                    }

                    
                   

                  } ,
                  onSaved: (emailinput){
                    sEmail = emailinput!;
                  },
                ),
              ),
                Padding(
           
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
               obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)),
                  labelText: "Password ",
                  prefixIcon: Icon(Icons.lock),
                ),
                onSaved: (pass){
                  sPassword = pass!;
                
                },
                
                validator: (password){
                  if(password!.isEmpty || password == ""){
                    return "password required";
                  }
                  else{ 
                    return null;
                  }
                },
                
              ),
            ),

                 Container(
                 color: Colors.amberAccent,
                child: Column(
                children: [
                 
                  TextButton(onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignApp(sEmail, sPassword)));
                    
                      if(formkey.currentState!.validate()){
                        formkey.currentState!.save();
                        print("Login Successfully"+
                        " "+ sEmail + " " + sPassword);
                        Fluttertoast.showToast(msg: "Login Successfully" );

                      }
 
                   
                  },
                   child: Text("Login"))
                ],
              ),
              ),
             
            ],
          ),
          
        
        ),


              ],) ),
    );
  
  }
}