import 'dart:html';
import 'dart:js';
import 'dart:js_util';

import 'package:flutter/material.dart';

class TelegramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Telegram"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: ListView(
        children: [
          buildlist(context, "ملفتة", 'assets/1.jpg', "1.20 PM"),
          Divider(
            color: Colors.black,
          ),
          buildlist(context, "سارة", 'assets/2.jpg', "2.30 PM"),
          Divider(
            height: 2,
            color: Colors.black,
          ),
          buildlist(context, "مجرات", 'assets/3.jpg', "3.30 PM"),
          buildlist(context, "سمره", 'assets/4.jpg', "2.00 PM"),
          buildlist(context, "مختلفة", 'assets/5.jpg', "1.48 PM"),
          buildlist(context, "حادة الرقة", 'assets/6.jpg', "5.30 PM"),
          buildlist(context, "سناشهن", 'assets/7.jpg', "9.4 AM"),
          buildlist(context, "نجمة", 'assets/8.jpg', "5.30 AM"),
          buildlist(context, "ملاذ", 'assets/9.jpg', "12.30 AM"),
          buildlist(context, "استيلاء", 'assets/10.jpg', "1.30 PM"),
          buildlist(context, "سوليتا", 'assets/11.jpg', "10.30 PM"),
          buildlist(context, "فراشة", 'assets/m.jpg', "6.34 PM"),
          buildlist(context, "سندريلا", 'assets/11.jpg', "2.26 AM"),
          buildlist(context, "انتيكا", 'assets/1.jpg', "4.30 PM"),
          buildlist(context, "رمان", 'assets/2.jpg', "2.30 PM"),
          buildlist(context, "مزة حواء", 'assets/3.jpg', "2.30 PM"),
          buildlist(context, "سمري", 'assets/4.jpg', "8.30 AM"),
          buildlist(context, "مارس", 'assets/5.jpg', "7.30 AM"),
          buildlist(context, "مجرة", 'assets/6.jpg', "9.30 AM"),
          buildlist(context, "زهرة", 'assets/7.jpg', "2.30 PM"),
          buildlist(context, "سنبلة", 'assets/8.jpg', "9.30 PM"),
          buildlist(context, "مذهلة", 'assets/9.jpg', "11.37 PM"),
          buildlist(context, "مبهره", 'assets/10.jpg', "12.45 AM"),
        ],
      ),
      backgroundColor: Colors.black87,
      drawer: bildDrawer(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.edit,
        ),
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

Widget bildDrawer() {
  return Drawer(
    backgroundColor: Colors.black54,
    child: Column(children: [
      UserAccountsDrawerHeader(
        accountName: Text("neda amrani"),
        accountEmail: Text("nonh@m.com"),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/4.jpg'),
          ),
          // color: Colors.brown,
        ),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage('assets/2.jpg'),
          radius: 50,
        ),
      ),
      bildlListTile("My Profile", Icons.favorite),
      Divider(
        color: Colors.black,
      ),
      bildlListTile("New Group", Icons.people),
      bildlListTile("Contacts", Icons.share),
      bildlListTile("Calls", Icons.notifications),
      bildlListTile("Save Messages", Icons.settings),
      bildlListTile("ettings ", Icons.settings),
      Divider(
        color: Colors.black,
      ),
      bildlListTile("Invite Friends", Icons.description),
      bildlListTile("Telegram Features", Icons.exit_to_app),
    ]),
  );
}

Padding buildlist(BuildContext context, text, image, time) {
  return Padding(
    padding: EdgeInsets.only(bottom: 6, top: 5),
    child: ListTile(
      title: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
      leading: CircleAvatar(
        foregroundImage: AssetImage(image),
        radius: 35,
      ),
      trailing: Text(
        time,
        style: TextStyle(color: Colors.white60),
      ),
    ),
  );
}

Padding bildlListTile(text, icon) {
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
        icon,
        color: Colors.white70,
      ),
    ),
  );
}
