import 'package:flutter/material.dart';
import 'sign_form.dart';
class Ans extends StatefulWidget {
  final List<String> selectedQuestions;
  const Ans({super.key, required this.selectedQuestions});

  @override
  State<Ans> createState() => _AnsState();
}

class _AnsState extends State<Ans> {
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      widget.selectedQuestions.length,
          (_) => TextEditingController(),
    );
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _submitAnswers() {
    final answers = {
      for (int i = 0; i < widget.selectedQuestions.length; i++)
        widget.selectedQuestions[i]: _controllers[i].text,
    };

    // Optional: validate if all fields are filled
    if (answers.values.any((ans) => ans.trim().isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please answer all questions.')),
      );
      return;
    }

    // Debug print or save answers
    print(answers);

    // Show success and navigate
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Answers submitted!')),
    );

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignForm()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Answer Security Questions')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: widget.selectedQuestions.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.selectedQuestions[index],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _controllers[index],
                  decoration: const InputDecoration(
                    hintText: 'Enter your answer',
                  ),
                ),
                const SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _submitAnswers,
        label: const Text('Submit'),
        icon: const Icon(Icons.check),
      ),
    );
  }
}
