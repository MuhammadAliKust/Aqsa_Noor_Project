import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar View"),
          bottom:
              TabBar(tabs: [Text("Home"), Text("Favorite"), Text("Profile")]),
        ),
        body: TabBarView(children: [
          Center(child: Column(
            children: [
              Text("Home",style: TextStyle(fontSize: 40),),
              Divider()
            ],
          ),),
          Center(child: Text("Favorite",style: TextStyle(fontSize: 40),),),
          Center(child: Text("Profile",style: TextStyle(fontSize: 40),),),
        ]),
      ),
    );
  }
}
