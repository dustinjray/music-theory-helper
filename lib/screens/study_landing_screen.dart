import 'package:flutter/material.dart';

class StudyLandingScreen extends StatelessWidget {
  const StudyLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Study – coming soon!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
