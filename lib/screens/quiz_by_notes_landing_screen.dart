import 'package:flutter/material.dart';

class QuizByNotesLandingScreen extends StatelessWidget {
  const QuizByNotesLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz by Notes'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Quiz by Notes – coming soon!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
