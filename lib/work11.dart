import 'package:flutter/material.dart';


class Work11 extends StatefulWidget {
  @override
  _MuAppState createState() => _MuAppState();
}

class _MuAppState extends State<Work11> {
  TextEditingController num1 = TextEditingController();
  int f = 1;
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              controller: num1,
            ),
            Text(f.toString()),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  f = 1;
                  for (int i = 1; i <= int.parse(num1.text); i++) f = f * i;
                },
                child: Text("fact")),
          ],
        ),
      ),
    );
  }
}
