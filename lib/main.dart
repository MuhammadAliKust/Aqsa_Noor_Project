

import 'package:aqsa_noor_project/dynamic_list_view_builder.dart';
import 'package:aqsa_noor_project/list_view_builder.dart';
import 'package:aqsa_noor_project/multiple_selection_view.dart';
import 'package:aqsa_noor_project/page_view.dart';
import 'package:aqsa_noor_project/single_selection_view.dart';
import 'package:flutter/material.dart';

import 'list_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageViewDemo()
    );
  }
}
