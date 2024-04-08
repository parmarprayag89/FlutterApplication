import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';


class SignApp extends StatefulWidget{
  
  String sEmail,sPassword;
  SignApp(this.sEmail,this.sPassword);


  @override
  SignAppState createState() => SignAppState();
}

class SignAppState extends State<SignApp>{
  int iRadiogroup = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text("Signup page "),
      ),
      body: Container(
        child: Column(
        children: [ Row
        (children: [
          Text("Email"),
          Text(widget.sEmail),
        ],
        ),
        Row(children: [
          Text("Password"),
          Text(widget.sPassword),
        ],
        ),
        Row(children: [
           Radio(value: 0, groupValue: iRadiogroup, onChanged:  (value){ 
            setState(() {
             iRadiogroup =0;
             Fluttertoast.showToast(msg: "Male");
           });}),
        Text("Male"),
        Radio(value: 1, groupValue: iRadiogroup, onChanged:  (value){ setState(() {
             iRadiogroup =1;
             Fluttertoast.showToast(msg: "Female");
           });}),
        Text("Female"),
        Radio(value: 2, groupValue: iRadiogroup, onChanged:  (value){ setState(() {
             iRadiogroup =2;
             Fluttertoast.showToast(msg: "Transgender");
           });}),
        Text("Transgender"),
        
        

        ],),
       
        ],
      )
     
      ),
    
      ),
      
     
      );
    
    
    
  }
}