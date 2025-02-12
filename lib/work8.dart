import 'package:flutter/material.dart';

class Work9 extends StatelessWidget {
  const Work9({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  TextEditingController result = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TextField ",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                controller: number1,
                maxLength: 50,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                    ),
                    hintText: "enter number",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    constraints: BoxConstraints(maxWidth: 300),
                    label: Text("first number "),
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ),
            ),
            Center(
              child: TextField(
                controller: number2,
                maxLength: 50,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                    ),
                    hintText: "enter number 2",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    constraints: BoxConstraints(maxWidth: 300),
                    label: Text("second number "),
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ),
            ),
            Center(
              child: TextField(
                readOnly: true,
                controller: result,
                maxLength: 50,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                    ),
                    constraints: BoxConstraints(maxWidth: 300),
                    label: Text("result"),
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      result.text =
                          (int.parse(number1.text) + int.parse(number2.text))
                              .toString();
                    },
                    child: Text("Sum")),
                ElevatedButton(
                    onPressed: () {
                      result.text =
                          (int.parse(number1.text) - int.parse(number2.text))
                              .toString();
                    },
                    child: Text("Sub")),
                ElevatedButton(
                    onPressed: () {
                      result.text =
                          (int.parse(number1.text) * int.parse(number2.text))
                              .toString();
                    },
                    child: Text("Mul")),
                ElevatedButton(
                    onPressed: () {
                      if (number2.text != 0) {
                        result.text =
                            (int.parse(number1.text) / int.parse(number2.text))
                                .toString();
                      } else
                        result.text = "لا يمكن ان يكون المقام صفرا";
                    },
                    child: Text("Div")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Center bildtext(field, hint, label) {
  return Center(
    child: TextField(
      controller: field,
      maxLength: 50,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blue[50],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 1,
            ),
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          constraints: BoxConstraints(maxWidth: 300),
          label: Text(label),
          labelStyle: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)),
    ),
  );
}
