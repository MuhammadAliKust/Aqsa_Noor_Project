import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.phone,
            maxLines: 1,
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'test@mail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.email),
            ),
          ),
          TextField(
            keyboardType: TextInputType.phone,
            obscureText: true,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: 'Password should be 6 or more characters.',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}
