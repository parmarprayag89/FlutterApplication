import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class homepage extends StatefulWidget{
  @override
  String sEmail1,sPassword1;
  homepage(this.sEmail1,this.sPassword1);
  Homepagestate createState() =>  Homepagestate();

}

class Homepagestate extends State<homepage>{

  int  iRadiogroup = 3;
  bool androidchek = false;
  bool javachek = false;
  bool phpchek = false;
  bool ioschek = false;

  List<String> technologyArray = [];

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
                  child: Text(widget.sEmail1),
                ) ,        
              ],
              
                   
                  ),
                  Row(children: [
                    Text("Password"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(widget.sPassword1),
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

                  ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: androidchek, onChanged: (value){
                        setState(() {
                          
                          androidchek = value!;
                          technologyMethod(value,"Anroid");
                        });
                        
                      }),
                      Text("Android"),
                    ],
                  ),
                   Row(
                    children: [
                      Checkbox(value: javachek, onChanged: (value){
                        setState(() {
                          
                          javachek = value!;
                          technologyMethod(value,"java");
                        });
                        
                      }),
                      Text("java"),
                    ],
                  ),
                   Row(
                    children: [
                      Checkbox(value: phpchek, onChanged: (value){
                        setState(() {
                           
                          phpchek = value!;
                          technologyMethod(value,"php");
                        });
                        
                      }),
                      Text("php"),
                    ],
                  ),
                   Row(
                    children: [
                      Checkbox(value: ioschek, onChanged: (value){
                        setState(() {
                          ioschek = value!;
                           technologyMethod(value,"ios");
                        });
                        
                      }),
                      Text("ios"),
                    ],
                  ),
                  
                 
          ],
          
        ),
        
               
      
      
      ),
      
      
      
    ),
    );
    
    
  }
  
  void technologyMethod(isSelected, message) {
    if(isSelected){
      
     technologyArray.add(message);
    }
    else{
      technologyArray.removeWhere((element) => element == message);
    }
    print(technologyArray);

  }
}



