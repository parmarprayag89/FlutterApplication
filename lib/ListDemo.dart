import 'package:flutter/material.dart';

class ListDemo extends StatefulWidget{
  @override
  ListAppstate createState() => ListAppstate();

}

class ListAppstate extends State<ListDemo>{
  List<String> titieArray = ["Android", "Flutter ", "Php ", "Python","Java", "Ios"];
   List<String> subtitieArray = ["Android", "Flutter ", "Php ", "Python","Java", "Ios"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        appBar: AppBar(
           backgroundColor: Colors.blue,
        title: Text("List View"),
      ),
       body: ListView.builder(
        itemCount: titieArray.length,
        itemBuilder: (BuildContext context , int position ){
          return ListTile(
            title:  Text(titieArray[position]),
            subtitle: Text(subtitieArray[position]),
            leading: Image.asset("assets/images/dog.jpeg"),
            trailing: Image.asset("assets/images/dog.jpeg"),

          );
        } ),
      ),
      
    );
  }
}