import 'package:flutter/material.dart';
import 'package:quizgyan/components/did_you_know.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Gyan'),
      ),
      body:Column(
        children: [
          DidYouKnow(),
        ],
      )
    );
    
  }
}
