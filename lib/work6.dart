import 'dart:ui';

import 'package:flutter/material.dart';

class Work6 extends StatelessWidget {
  const Work6({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Center(
          
            child: ListView(
              
              children: [
           bildContiner(),
           bildContiner(),
           bildContiner(),
           bildContiner(),
           bildContiner(),
           bildContiner(),
           bildContiner(),
           bildContiner(),

                
              ],
            ),
        ),
        drawer: Drawer(
          child: ListView(
          
            children: [
              Image.asset("assets/m.jpg"),
              //fit:BoxFit.cover,
              Container(
                child: DrawerHeader(
                
                decoration: BoxDecoration(
                //  image:DecorationImage(image: AssetImage("img/n.jpg"),),
                  
                 color: Colors.amber,
                // backgroundBlendMode: 
                ),
                child: Column(
                  children: [

                  ],
                )),
                )


          ]),
        ),
      ),
    );
  }
}


Container bildContiner(){
  return      Container(
          margin: EdgeInsets.only(bottom: 5),
          width: 100,
          height: 200,
          color: Colors.amber,
          child: Text("neda amrani"),
        );

}