import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class homepage extends StatefulWidget{
  @override
  String sEmail,sPaaword;
  homepage(this.sEmail,this.sPaaword);
  Homepagestate createState() =>  Homepagestate();

}

class Homepagestate extends State<homepage>{

 int  iRadiogroup = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text("home page"),
      ),
      body: Container(
        
        child: Column(
          children: [
            Row(
              children: [
                Text("Email "),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(widget.sEmail),
                ) ,        
              ],
              
                   
                  ),
                  Row(children: [
                    Text("Password"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(widget.sPaaword),
                    )
                  ],
                  ),
                  Row(children: [
                     Radio(value: 0, groupValue: iRadiogroup, onChanged: (Value){
                      setState(() {
                        iRadiogroup = 0;
                        Fluttertoast.showToast(msg: "Male");
                      });
                     } ),
                  Text("Male"),
                  Radio(value: 1, groupValue: iRadiogroup, onChanged: (Value){
                     setState(() {
                        iRadiogroup = 1;
                        Fluttertoast.showToast(msg: "Femle");
                      });
                  } ),
                   Text("Female"),
                  Radio(value: 2, groupValue: iRadiogroup, onChanged: (Value){
                     setState(() {
                        iRadiogroup = 2;
                        Fluttertoast.showToast(msg: "Transgender");
                      });
                  } ),
                   Text("Transgender"),

                  ],)
                 
          ],
          
        ),
        
               
      
      
      ),
      
      
      
    ),
    );
    
    
  }
}

