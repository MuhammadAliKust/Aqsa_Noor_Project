import 'dart:developer';

import 'package:flutter/material.dart';

class MultipleSelectionView extends StatefulWidget {
  MultipleSelectionView({super.key});

  @override
  State<MultipleSelectionView> createState() => _MultipleSelectionViewState();
}

class _MultipleSelectionViewState extends State<MultipleSelectionView> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiple Selection Demo"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                if (selectedIndex.contains(i)) {
                  selectedIndex.remove(i);
                } else {
                  selectedIndex.add(i);
                }
                setState(() {});
              },
              leading: const Icon(Icons.notifications),
              title: Text("Selected Index:  $selectedIndex"),
              subtitle: Text("Loop Index: $i"),
              tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white,
            );
          }),
    );
  }
}
