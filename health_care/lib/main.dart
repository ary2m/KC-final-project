import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        backgroundColor: Colors.blue,
        body: Center(
          child: 
          Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ 
           Text(
            "Health Care",
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600, color: Colors.white )
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              }, child: Text("Welcome", style: TextStyle(color: Colors.blue),))
          ],)
        ),
    );
  }
}