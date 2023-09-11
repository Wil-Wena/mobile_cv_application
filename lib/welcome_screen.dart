import 'package:flutter/material.dart';
import 'package:mobile_cv_application/cv_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints(maxHeight: 1000, maxWidth: 1000),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.jpg",
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 20),

                const Text(
                  "Curriculum Vitae",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                // Welcome message
                const Text(
                  "Access my CV by clicking on the View button",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () {
                    // Navigate to your main screen
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const CVScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "View",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
