import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Quiz Gyan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Quiz Gyan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Quiz Gyan is a fun and interactive quiz application that allows users to test their knowledge across various subjects. Whether you are a trivia buff or just looking to learn something new, Quiz Gyan has something for everyone.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Features:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '- Multiple quiz levels\n- Wide range of topics\n- User-friendly interface\n- Fun and educational',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
