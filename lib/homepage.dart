import 'dart:js_util';

import 'package:flutter/material.dart';
import 'telegram_work.dart';
import 'work1.dart';
import 'work2.dart';
import 'work3.dart';
import 'work4.dart';
import 'work5.dart';
import 'work6.dart';
import 'work7.dart';
import 'work8.dart';
import 'work10.dart';
import 'work11.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME_WORK"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          child: Center(
            child: Text(
              "all the home work is here",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          width: 350,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black45,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "neda",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              accountEmail: Text(
                "nonh@neda.com",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                //color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/1.jpg'),
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/7.jpg'),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            bildlListTile(context, "home_work1", TelegramApp()),
            Divider(
              color: Colors.white,
            ),
            bildlListTile(context, "home_work2", Work1()),
            bildlListTile(context, "home_work3", Work2()),
            bildlListTile(context, "home_work4", Work3()),
            bildlListTile(context, "home_work5", Work4()),
            bildlListTile(context, "home_work6", Work5()),
            bildlListTile(context, "home_work7", Work6()),
            bildlListTile(context, "home_work8", Work7()),
            bildlListTile(context, "home_work9", Work9()),
            bildlListTile(context, "home_work10", Work10()),
            bildlListTile(context, "home_work11", Work11()),
          ],
        ),
      ),
    );
  }
}
Padding newmethod(text,bage){
return Padding(padding: EdgeInsets.only(bottom: 5),

);
}

Padding bildlListTile(BuildContext context, text, page) {
  return Padding(
    padding: EdgeInsets.only(bottom: 7),
    child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.check_box,
          color: Colors.white,
        ),
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>page));
        }),
  );
}
