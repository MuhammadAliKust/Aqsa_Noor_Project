import 'package:flutter/material.dart';

class AssetsImageView extends StatelessWidget {
  const AssetsImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Image"),
      ),
      body: Image.asset('assets/images/1.png'),
    );
  }
}

