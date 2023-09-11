import 'package:flutter/material.dart';
import 'package:mobile_cv_application/edit_screen.dart';

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
      """I am a passionate computer engineer who seeks to solve world problems through tech
      ghjkfldgfyuvhdn heisklxzhbgfrbvhdvbfgh sqgvdeygbcwhi gtvybuaheyirgfybhecbbg bas  vazjsvajszhvgcj svjc agsgjcabcsvgc bsvchzj  jccvjgvvd svd sjdfvdsgfdsjvdsdsvfdsfdsvfdsdvsdvfs 
      I am a passionate computer engineer who seeks to solve world problems through tech
      ghjk
      I am a passionate computer engineer who seeks to solve world problems through tech
      ghjk
      """;
  TextEditingController nameController = TextEditingController();
  TextEditingController slackController = TextEditingController();
  TextEditingController githubController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = fullName;
    slackController.text = slackUsername;
    githubController.text = gitHandle;
    bioController.text = bio;
  }

  // Function to update the CV fields
  void updateCV() {
    setState(() {
      fullName = nameController.text;
      slackUsername = slackController.text;
      gitHandle = githubController.text;
      bio = bioController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 1,
        centerTitle: true,
        // backgroundColor: Colors.lightBlueAccent,
        title: const Text('Curriculum Vitae'),
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
                Text(
                  fullName,
                  style: const TextStyle(color: Colors.white70, fontSize: 15),
                ),
                const SizedBox(height: 20),
                const RequireText(text: "Slack Username"),
                Text(slackUsername,
                    style:
                        const TextStyle(color: Colors.white70, fontSize: 15)),
                const SizedBox(height: 20),
                const RequireText(text: "Github Handle"),
                Text(gitHandle,
                    style:
                        const TextStyle(color: Colors.white70, fontSize: 15)),
                const SizedBox(height: 20),
                const RequireText(text: "Bio"),
                Text(bio,
                    style:
                        const TextStyle(color: Colors.white70, fontSize: 15)),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        focusElevation: 23,
        backgroundColor: Colors.lightBlueAccent,
        hoverColor: Colors.white,
        //splashColor: Colors.purple,
        tooltip: "Tap to edit",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditScreen(
                nameController: nameController,
                slackController: slackController,
                githubController: githubController,
                bioController: bioController,
                onUpdate: updateCV,
              ),
            ),
          );
        },
        child: const Icon(
          Icons.edit,
          //semanticLabel: "Edit",
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
