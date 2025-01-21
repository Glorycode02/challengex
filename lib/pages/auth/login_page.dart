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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // App Title
            const Text(
              "ChallengeX",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36.0,
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text.rich(
              TextSpan(
                text: "Welcome back to ",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(
                    text: "ChallengeX",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Username Field
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Colors.teal),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                labelText: "Username",
                labelStyle: const TextStyle(color: Colors.teal),
              ),
            ),
            const SizedBox(height: 20),

            // Password Field
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock, color: Colors.teal),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                labelText: "Password",
                labelStyle: const TextStyle(color: Colors.teal),
              ),
            ),
            const SizedBox(height: 30),

            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Login logic
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Or Divider
            const Row(
              children: [
                Expanded(child: Divider(color: Colors.grey)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "OR",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 20),

            // Social Media Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Google login logic
                  },
                  icon: const Icon(Icons.g_translate, color: Colors.white),
                  label: const Text("Google"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Instagram login logic
                  },
                  icon: const Icon(Icons.camera_alt, color: Colors.white),
                  label: const Text("Instagram"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Footer Text
            Center(
              child: GestureDetector(
                onTap: () {
                  // Navigate to register page
                },
                child: const Text(
                  "Don't have an account? Register here",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.teal,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
