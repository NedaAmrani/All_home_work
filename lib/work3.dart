
import 'package:flutter/material.dart';


class Work3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.error_outline, color: Colors.black),
            ),
            Icon(Icons.more_vert, color: Colors.black),
          ],
          leading: Icon(Icons.arrow_back, color: Colors.black),
          title: const Text(
            "meterialApp",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                child: Container(
                  child: Text("MeterialApp2",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  width: 350,
                  height: 60,
                  color: Colors.blue,
                ),
              ),
              Center(
                child: Container(
                  child: Center(
                    child: Text(
                      "MeterialApp2MeterialApp2MeterialApp2MeterialApp2MeterialApp2MeterialApp2MeterialApp2",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  width: 350,
                  height: 600,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
