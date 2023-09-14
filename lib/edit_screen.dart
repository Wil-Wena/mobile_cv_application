import 'package:flutter/material.dart';
import 'package:mobile_cv_application/cv_screen.dart';

class EditScreen extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController slackController;
  final TextEditingController githubController;
  final TextEditingController bioController;
  final TextEditingController workExperinceController;
  final TextEditingController skillsController;
  final TextEditingController educationController;
  final Function onUpdate;
  const EditScreen(
      {super.key,
      required this.nameController,
      required this.slackController,
      required this.githubController,
      required this.bioController,
      required this.onUpdate,
      required this.workExperinceController,
      required this.skillsController,
      required this.educationController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Edit CV'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 15,
          color: const Color.fromARGB(255, 69, 134, 187),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RequireText(text: "Full Name"),
                RequireTextField(controller: nameController),
                const SizedBox(height: 20),
                const RequireText(text: "Slack Username"),
                RequireTextField(controller: slackController),
                const SizedBox(height: 20),
                const RequireText(text: "Github Handle"),
                RequireTextField(controller: githubController),
                const SizedBox(height: 20),
                const RequireText(text: "Bio"),
                RequireTextField(controller: bioController),
                const SizedBox(height: 20),
                const RequireText(text: "Education"),
                RequireTextField(controller: educationController),
                const SizedBox(height: 20),
                const RequireText(text: "Work Experience"),
                RequireTextField(controller: workExperinceController),
                const SizedBox(height: 20),
                const RequireText(text: "Skills"),
                RequireTextField(controller: skillsController),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    autofocus: true,
                    onPressed: () {
                      onUpdate();
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Update',
                      style: TextStyle(
                          color: Color.fromARGB(255, 69, 134, 187),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RequireTextField extends StatelessWidget {
  const RequireTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 171, 182, 187))),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
      autocorrect: false,
      controller: controller,
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white, fontSize: 15),
    );
  }
}
