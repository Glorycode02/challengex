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
              const Text("ChallengeX",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              ),),

              const Text.rich(
                TextSpan(
                  text: "Welcome back to ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1.0, // Slight spacing between letters
                  ),
                  children: [
                    TextSpan(
                      text: "ChallengeX",
                      style: TextStyle(
                        color: Colors.teal, // Thicker underline
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center, // Center-align the text block
              ),

              const SizedBox(height: 40,),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                  // prefixIcon: const Icon(Icons.)
                ),
              ),
             const SizedBox(height: 30,),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  // prefixIcon: const Icon(Icons.verified_user)
                ),
              ),
              const SizedBox(height: 30,),
              MaterialButton(
                onPressed: (){},
                child: const Text("Login",style: TextStyle(color: Colors.white),),
                color: Colors.teal,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              ),
              const SizedBox(height: 30,),
              const Text("Or"),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      onPressed: (){},
                      child: Text("Login with Google",
                        style: TextStyle(color: Colors.white),
                      ),
                    color: Colors.teal,
                  ),

                  SizedBox(width: 50,),
                  MaterialButton(
                      onPressed: (){},
                      child: Text("Login with Instagram",
                        style: TextStyle(color: Colors.white),
                      ),
                    color: Colors.teal,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
