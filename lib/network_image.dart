import 'package:flutter/material.dart';

class NetworkImageView extends StatelessWidget {
  const NetworkImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network Image"),
      ),
      body: Image.network(
          "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
