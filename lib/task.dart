import 'dart:developer';

import 'package:aqsa_noor_project/models/task.dart';
import 'package:flutter/material.dart';

class TaskView extends StatefulWidget {
  TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  List<TaskModel> taskList = [
    TaskModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description',
        date: '22/10/2024',
        time: '12:30'),
    TaskModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description',
        date: '22/10/2024',
        time: '12:30'),
    TaskModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description',
        date: '22/10/2024',
        time: '12:30'),
    TaskModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description',
        date: '22/10/2024',
        time: '12:30'),
    TaskModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description',
        date: '22/10/2024',
        time: '12:30'),
    TaskModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description',
        date: '22/10/2024',
        time: '12:30'),
    TaskModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description',
        date: '22/10/2024',
        time: '12:30'),
    TaskModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description',
        date: '22/10/2024',
        time: '12:30'),
    TaskModel(
        image: 'assets/images/1.png',
        title: 'First Title',
        description: 'First Description',
        date: '22/10/2024',
        time: '12:30'),
  ];

  List<int> favoriteList = [];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task"),
      ),
      body: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                InkWell(onTap: () {}, child: Image.asset(taskList[i].image)),
                Text(taskList[i].title),
                Text(taskList[i].description),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text(taskList[i].date), Text(taskList[i].time)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // if (favoriteList.contains(i)) {
                        //   favoriteList.remove(i);
                        //   setState(() {});
                        // }
                        if (favoriteList.length == 5) {
                          if (favoriteList.contains(i)) {
                            favoriteList.remove(i);

                            setState(() {});
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text("You cannot like more than 5 posts")));
                            return;
                          }
                        } else {
                          if (favoriteList.contains(i)) {
                            favoriteList.remove(i);
                          } else {
                            favoriteList.add(i);
                          }
                          setState(() {});
                        }
                      },
                      child: Icon(
                        Icons.favorite,
                        color: favoriteList.contains(i)
                            ? Colors.red
                            : Colors.black,
                      ),
                    ),
                    InkWell(onTap: () {}, child: Icon(Icons.add)),
                    ElevatedButton(
                      onPressed: () {
                        selectedIndex = i;
                        setState(() {});
                      },
                      child: Icon(
                        Icons.bookmark,
                        color: selectedIndex == i ? Colors.blue : Colors.black,
                      ),
                    ),
                    Icon(Icons.add),
                  ],
                )
              ],
            );
          }),
    );
  }
}
