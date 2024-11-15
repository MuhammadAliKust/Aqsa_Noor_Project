import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlideableView extends StatelessWidget {
  const SlideableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slidable"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return Slidable(
              key: const ValueKey(0),

              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: [
                  SlidableAction(
                    onPressed: (val) {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    icon: Icons.check_circle,
                  ),
                ],
              ),

              // The child of the Slidable is what the user sees when the
              // component is not dragged.
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/1.png',
                    width: 50,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                          "Covid: Dr Scott Atlas - Trump's controversial coronavirus adviser - resigns"),
                      Text("4 minutes ago  |   US & Canada")
                    ],
                  ))
                ],
              ),
            );
          }),
    );
  }
}
