import 'package:aqsa_noor_project/bottom_bar.dart';
import 'package:aqsa_noor_project/bottom_sheet.dart';
import 'package:aqsa_noor_project/dialog_box.dart';
import 'package:aqsa_noor_project/dynamic_list_view_builder.dart';
import 'package:aqsa_noor_project/google_map.dart';
import 'package:aqsa_noor_project/grid_view.dart';
import 'package:aqsa_noor_project/list_view_builder.dart';
import 'package:aqsa_noor_project/login.dart';
import 'package:aqsa_noor_project/multiple_selection_view.dart';
import 'package:aqsa_noor_project/page_view.dart';
import 'package:aqsa_noor_project/provider/name.dart';
import 'package:aqsa_noor_project/screen_a.dart';
import 'package:aqsa_noor_project/single_selection_view.dart';
import 'package:aqsa_noor_project/switch.dart';
import 'package:aqsa_noor_project/tabbar.dart';
import 'package:aqsa_noor_project/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list_tile.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => NameProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SwitchDemo());
  }
}
