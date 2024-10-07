import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Builder Demo"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return ListTile(
              leading: const Icon(Icons.notifications),
              title: Text("Notification Title $i"),
              subtitle: const Text("Notification Sub Title"),
              tileColor: Colors.blue,
            );
          }),
    );
  }
}
