import 'package:flutter/material.dart';
import 'package:flutter_application/Signup.dart';
import 'package:fluttertoast/fluttertoast.dart';


class login1 extends StatefulWidget{

  @override
  
  Login1state createState() => Login1state();
}

class Login1state extends State<login1>{

  GlobalKey<FormState> formkey = new GlobalKey();
 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Color.fromARGB(255, 230, 160, 90),
        title: Text("Login Page"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,10,20),
              child: Image.asset("assets/images/images.png"),
            ),
            Form(
              key: formkey,
              child: Column(
              children: [
                  Padding(
                   
              
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)),
                  
                  labelText: "Email id ",
                  prefixIcon: Icon(Icons.email),
               ),
               validator: (emailinput) {
                if(emailinput!.isEmpty){
                  return "Email id required";

                }
                else if(!RegExp(r"[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]").hasMatch(emailinput)){

                      return " valid email id ";
                }
                else{
                  return null;
                }
                


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
              width: 150.0,
              height: 40.0,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    
                    if(formkey.currentState!.validate()){
                      formkey.currentState!.save();
                      
                       
                        Fluttertoast.showToast(
                      gravity: ToastGravity.CENTER,
                      msg: "Login successfully"  ,
                      toastLength: Toast.LENGTH_LONG);

                      
                       

                     


                      

                    }
                   
                      
                    
                  
                  },
                   child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),
                   ),
                   ),
              ),
              ),

              ],
            ),
            ),
            
          
          ],
        ),
      ),
      ),
    

    );
  }

}

