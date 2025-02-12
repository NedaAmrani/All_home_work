import 'package:flutter/material.dart';

void main() {
  runApp(Work5());
}

class Work5 extends StatelessWidget {
  const Work5({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Homee(),
    );
  }
}

class Homee extends StatelessWidget {
  const Homee({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            contPadd(),
            contPadd(),
            contPadd(),
            contPadd(),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("img/1.jpg"),
                )),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/2.jpg"),
                      radius: 50,
                    ),
                    Text("data"),
                  ],
                )),
            bildlListTile("h1", Icons.linked_camera),
            bildlListTile("h1", Icons.linked_camera),
            bildlListTile("h1", Icons.linked_camera),
            bildlListTile("h1", Icons.linked_camera),
            bildlListTile("h1", Icons.linked_camera),
            bildlListTile("h1", Icons.linked_camera),
            bildlListTile("h1", Icons.linked_camera),
            bildlListTile("h1", Icons.linked_camera),
            bildlListTile("h1", Icons.linked_camera),
          ],
        ),
      ),
    );
  }
}

Padding contPadd() {
  return Padding(
    padding: const EdgeInsets.only(left: 50),
    child: Container(
      height: 50,
      width: 900,
      color: Colors.brown,
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.white,
          ),
          Text(
            "soleta",
            style: TextStyle(color: Colors.white),
          ),
        ],
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
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(
        icon,
        color: Colors.black,
      ),
    ),
  );
}
