import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "First Screen",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(Icons.arrow_back,color: Colors.white,),
          actions: [
            Icon(Icons.notifications,color: Colors.white,),
            Icon(Icons.shopping_cart,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
