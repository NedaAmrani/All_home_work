import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_work5/work11.dart';

class Work12 extends StatefulWidget {
  @override
  _MuAppState createState() => _MuAppState();
}

class _MuAppState extends State<Work12> {
  TextEditingController num1 = TextEditingController();
  int f = 1;
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Work11()), (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 45, 100, 33),
        body: Center(
          child: Container(
            child: CircleAvatar(
              radius: 70,
            backgroundImage: AssetImage(""),
          )),
        ),
      ),
    );
  }
}
