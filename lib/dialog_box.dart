import 'package:flutter/material.dart';

class DialogBoxView extends StatelessWidget {
  const DialogBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box Demo"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Message!"),
                      content: Text("Your order has been placed successfully."),
                      actions: [
                        TextButton(onPressed: () {}, child: Text("Yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("No")),
                      ],
                    );
                  });
            },
            child: Text("Show Dialog Box")),
      ),
    );
  }
}
