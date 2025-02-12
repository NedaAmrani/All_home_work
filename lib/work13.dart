import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome(),
    ); }


}
class Myhome extends StatefulWidget {

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  double h=0;
  double w=0;
  String im="";
  TextEditingController hh = TextEditingController();
  TextEditingController ww = TextEditingController();
  TextEditingController link = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Column(
          children: [
            TextField(
             controller: hh,
            ),
            TextField(
              controller: ww,
            ),
           TextField(
             controller: link,
           ) ,
            ElevatedButton(onPressed: () {
                          setState(() {
                  h = double.parse(hh.text);
                  w = double.parse(ww.text);
                  im= link.text;
                          });
            }, child: Text("معالجة")),

            ElevatedButton(onPressed: () {
                    setState(() {
                w+=w;
                h+=h;
                    });
            }, child: Text("تكبير")),
            ElevatedButton(onPressed: () {
              setState(() {
                w-=w;
                h-=h;
              });
            }, child: Text("تصغير")),
            Image(image: AssetImage("assets/13.jpg"),height: h,width:w),

          ],
        )
      ),
    );
  }
}

