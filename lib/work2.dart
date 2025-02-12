//import 'dart:js';

import 'package:flutter/material.dart';

class Work2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final width=MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            actions: [
              Icon(Icons.more_vert),
              Icon(Icons.error_outline),
            ],
            leading: Icon(Icons.arrow_back, color: Colors.black),
            title: Text("continer"),
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
            centerTitle: true,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Center(
                    child: Text(
                  "continer",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                )),
                width: 500,
                height: 100,
                color: Colors.blue,
              ),
              SizedBox(
                height: 20,
              ),
              Transform(
                transform: Matrix4.rotationZ(0.3),
                child: Container(
                  width: 1000,
                  height: 50,
                  color: Colors.amber,
                  child: Center(
                    child: Center(child: Text("data datadatadatadata")),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Transform(
                transform: Matrix4.rotationZ(0.5),
                child: Container(
                  width: 900,
                  height: 50,
                  color: Colors.amber,
                  child: Center(
                    child: Center(child: Text("data datadatadatadata")),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                  child: cont,
                ),
              ),
            ],
          )),
    );
  }
}

Container cont = Container(
  height: 300,
  width: 300,
  color: Colors.black,
  child: Center(
    child: Container(
      height: 200,
      width: 200,
      color: Colors.blue,
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
          child: Center(
            child: Container(
              height: 79,
              width: 79,
              color: Colors.red,
              child: Center(
                child: Container(
                  height: 40,
                  width: 40,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  ),
);
