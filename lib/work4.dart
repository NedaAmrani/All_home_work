

import 'package:flutter/material.dart';


class Work4 extends StatelessWidget {

Padding padd= Padding(
padding: EdgeInsets.all(4),
child: IconButton(onPressed: ()=>{print("object"),},
 icon:Icon(Icons.share,color: Colors.amberAccent,size: 30,),

),
);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(

     backgroundColor: Colors.blueAccent,
   title: const Text("first"),
   titleTextStyle: const TextStyle(color: Colors.black,fontSize: 35),
   centerTitle: true,
   ),
   body: Center(
     child: SingleChildScrollView(
       child: Column(
         children: [
     cont,cont,cont,cont,cont,cont,cont,cont,cont,
         ],
       ),
     ),
   ),
   bottomNavigationBar: const Text("non"),
  drawer: Drawer(),
   ),
   );
  }



}



Padding cont =  Padding(

  padding: const EdgeInsets.all(34),
  child:Container(
     child: Center(
         child:  Text("data"),
       ),
      width: 200,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
      height: 200,
  
      decoration:  BoxDecoration(
            color: Colors.blueGrey,
        borderRadius: BorderRadius.all(Radius.circular(45)),
             
      ),
      
),
);