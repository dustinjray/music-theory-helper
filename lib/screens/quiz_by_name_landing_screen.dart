import 'package:flutter/material.dart';

class QuizByNameLandingScreen extends StatelessWidget {
  const QuizByNameLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz by Name'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Quiz by Name – coming soon!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
