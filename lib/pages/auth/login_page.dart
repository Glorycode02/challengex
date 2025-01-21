import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
