import 'package:flutter/material.dart';
import 'study_landing_screen.dart';
import 'quiz_by_name_landing_screen.dart';
import 'quiz_by_notes_landing_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Theory Helper'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _NavCard(
              label: 'Study',
              icon: Icons.menu_book,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const StudyLandingScreen(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            _NavCard(
              label: 'Quiz by Name',
              icon: Icons.music_note,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const QuizByNameLandingScreen(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            _NavCard(
              label: 'Quiz by Notes',
              icon: Icons.queue_music,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const QuizByNotesLandingScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavCard extends StatelessWidget {
  const _NavCard({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Row(
            children: [
              Icon(icon, size: 32, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 16),
              Text(
                label,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
