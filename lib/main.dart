import 'package:challengex/pages/auth/login_page.dart';
import 'package:challengex/pages/others/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        "/homepage": (context) => const HomePage()
      },
    );
  }
}

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  final List<String> imagePaths = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Expanded(
          //     child: GridView.builder(
          //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //             crossAxisCount: 2,
          //             crossAxisSpacing: 10,
          //             mainAxisSpacing: 20
          //             ),
          //         itemCount: imagePaths.length,
          //         itemBuilder: (context, index) {
          //           return ClipRRect(
          //             borderRadius: BorderRadius.circular(10),
          //             child: Image.asset(
          //               imagePaths[index],
          //               fit: BoxFit.cover,
          //             ),
          //           );
          //         }),
          //   ),
          // ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text.rich(
                    TextSpan(
                      text: 'Welcome to ', // Default style
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'ChallengeX!',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Join fun and engaging challenges with your friends and community. Compete, learn, and grow together!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the LoginPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32, // Wider horizontal padding
                        vertical: 16, // Taller vertical padding
                      ),
                      backgroundColor:
                          Colors.blueAccent, // Button background color
                      foregroundColor: Colors.white, // Text color
                      shadowColor: Colors.teal.shade100, // Shadow color
                      elevation: 8, // Shadow elevation
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12), // Rounded corners
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20, // Larger font size
                        fontWeight: FontWeight.bold, // Bold text
                        letterSpacing: 1.5, // Spaced out text
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
