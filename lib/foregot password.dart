import 'package:flutter/material.dart';
import 'fans.dart';
class foregotpass extends StatefulWidget {
  const foregotpass({super.key});

  @override
  State<foregotpass> createState() => _foregotpassState();
}

class _foregotpassState extends State<foregotpass> {
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
        title: const Text('Change Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Choose 3 current  questions:'),
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
                    builder: (context) =>  Fans(selectedQuestions: selectedQuestions), // Replace with your form screen
                  ),
                );
              }
                  : null,
              child: const Text(
                'Change password',
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
