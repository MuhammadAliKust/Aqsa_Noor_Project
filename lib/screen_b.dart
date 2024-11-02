import 'package:aqsa_noor_project/provider/name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    var nameProvider = Provider.of<NameProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Center(
        child: Text(
          nameProvider.getName(),
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
