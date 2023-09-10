import 'package:flutter/material.dart';

class CVScreen extends StatefulWidget {
  const CVScreen({super.key});

  @override
  State<CVScreen> createState() => _CVScreenState();
}

class _CVScreenState extends State<CVScreen> {
  String fullName = 'Aballey Wilson Wenawome';
  String slackUsername = "Wilson Aballey";
  String gitHandle = "Wil_wena";
  String bio =
      "I am a passionate computer engineer who seeks to solve world problems through tech";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My CV'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 10.0,
          color: const Color.fromARGB(255, 69, 134, 187),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Personal Information',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Divider(),
                const RequireText(text: "Full Name"),
                Text(fullName),
                const SizedBox(height: 20),
                const RequireText(text: "Slack Username"),
                Text(slackUsername),
                const SizedBox(height: 20),
                const RequireText(text: "Github Handle"),
                Text(gitHandle),
                const SizedBox(height: 20),
                const RequireText(text: "Bio"),
                Text(bio),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RequireText extends StatelessWidget {
  final String text;
  const RequireText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
