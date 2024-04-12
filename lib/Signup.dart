

import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';


class SignApp extends StatefulWidget{
  
  String sEmail,sPassword;
  SignApp(this.sEmail,this.sPassword);


  @override
  SignAppState createState() => SignAppState();
}

class SignAppState extends State<SignApp>{

List<String>  techArray =[];

  int iRadiogroup = 0;
  
  bool android = false;
  bool flutter = false;
  bool java= false;
  
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
        
        

        ],
        
        ),
        Row(
          children: [
            Checkbox(value: android, onChanged: (value){
              setState(() {
                android = value! ;
                techMethod(value,"android");
              });
              
            }
            ),
            Text("Android"),
          ],
        ),
         Row(
          children: [
            Checkbox(value: flutter , onChanged: (value){
              setState(() {
                flutter = value! ;
                techMethod(value,"flutter");
              });
              
            }
            ),
            Text("flutter"),
          ],
        ),
         Row(
          children: [
            Checkbox(value: java , onChanged: (value){
              setState(() {
                java = value! ;
                techMethod(value,"java");
              });
              
            }
            ),
            Text("java "),
          ],
        ),
       
       
       

      
        
       
        ],
      )
     
      ),
    
      ),
      
     
      );
    
    
    
  }

  void techMethod(isSelected,message){
    if(isSelected){
      techArray.add(message);
  
    }
    else{
      techArray.removeWhere((element) => element == message);
    }
    
    print(techArray);

  }
  
 
 
}