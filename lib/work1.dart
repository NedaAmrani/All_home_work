import 'package:flutter/material.dart';

class Work1 extends StatelessWidget {
  const Work1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(appBar: AppBar(
       leading:Icon(Icons.face) ,
       actions: [
       
         Icon(Icons.bike_scooter,color: Colors.white,),
         Icon(Icons.directions_bus,color: Colors.white,),
         Icon(Icons.more_vert,color: Colors.white,),
       ],
       title: Text("sample title"),
       centerTitle: true,
       backgroundColor: Colors.red,

     ),
     body:Center(
          child: Text("hello",style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
     backgroundColor: Colors.black,
     ),
    );
  }}



   