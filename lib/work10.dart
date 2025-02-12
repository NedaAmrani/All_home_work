import 'package:flutter/material.dart';

class Work10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> student = ["non", "neda", "amrani"];

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                      hintText: "input your name:",
                      border: OutlineInputBorder()),
                ),
              ),
              flex: 1,
            ),
            ElevatedButton(
                onPressed: () {
                  if(name.text !=""&&student.contains(name.text))
                  {
                  student.add(name.text);                
                  setState(() {});
                  }
                              
                },
                child: Text("add")),
            Expanded(
                flex: 8,
                child: ListView.builder(
                  itemCount: student.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 2),
                      child: ListTile(
                        title: Text(student[index]),
                        tileColor: Colors.blue,

                        
                      ),
                    );
                  },
                ))
          ],
        ));
  }
}
