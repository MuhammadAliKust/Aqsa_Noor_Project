import 'package:aqsa_noor_project/provider/name.dart';
import 'package:aqsa_noor_project/screen_b.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenA extends StatelessWidget {
  ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    var nameProvider = Provider.of<NameProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              nameProvider.setName('Ali');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const ScreenB()));
            },
            child: Text("Go to Scren B")),
      ),
    );
  }
}
