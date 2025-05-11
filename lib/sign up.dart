import 'package:flutter/material.dart';
import 'ans.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final List<String> securityQuestions = [
    "What was the name of your first pet?",
    "What is the name of your elementary school?",
    "What city were you born in?",
    "What is the name of your favorite childhood friend?",
    "What was your first car?",
    "What is the name of the street you grew up on?",
    "What was your high school mascot?",
    "In what city did you meet your spouse/partner?",
    "What is the name of your favorite teacher?",
    "What was the name of your first employer?",
    "What is the name of the company of your first job?"
  ];

  final List<String> selectedQuestions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Choose 3 security questions:'),
            Expanded(
              child: ListView.builder(
                itemCount: securityQuestions.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(securityQuestions[index]),
                    value: selectedQuestions.contains(securityQuestions[index]),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          if (selectedQuestions.length < 3) {
                            selectedQuestions.add(securityQuestions[index]);
                          }
                        } else {
                          selectedQuestions.remove(securityQuestions[index]);
                        }
                      });
                    },
                  );
                },
              ),
            ),

            ElevatedButton(
              onPressed: selectedQuestions.length == 3
                  ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ans(selectedQuestions: selectedQuestions),
                  ),
                );

              }
                  : null,
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
