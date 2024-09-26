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
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "First Screen",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ],
        ),
        body: Row(
          children: [
            Text("First Text",style: TextStyle(fontSize: 20),),
            SizedBox(height: 30,),
            Text("Second Text",style: TextStyle(fontSize: 20),),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
