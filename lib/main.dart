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
        body: Column(
          children: [
            Text(
              "In publishing and graphic design, Lorem ipsum is a placeholder text ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.thumb_up),
                Icon(Icons.favorite),
                Icon(Icons.comment),
                Icon(Icons.share)
              ],
            )
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
