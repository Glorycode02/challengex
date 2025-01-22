import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text.rich(
          TextSpan(
            text: "Challenge-",
            children: [
              TextSpan(
                text: "X",
                style: TextStyle(
                  color: Colors.blueAccent
                )
              )
            ]
          )
        ),
      ),
      body: Text("Hello user"),
    );
  }
}
