import 'package:aqsa_noor_project/asset_image.dart';
import 'package:flutter/material.dart';

import 'network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AssetsImageView()
    );
  }
}
