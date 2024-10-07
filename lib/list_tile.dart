import 'package:flutter/material.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
      ),
      body: const ListTile(
        leading: Icon(Icons.notifications),
        title: Text("Notification Title"),
        subtitle: Text("Notification Sub Title"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.arrow_forward_ios),
            Icon(Icons.arrow_forward_ios),
            Icon(Icons.arrow_forward_ios),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
        tileColor: Colors.blue,
      ),
    );
  }
}
