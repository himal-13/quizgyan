import 'package:flutter/material.dart';
import 'package:quizgyan/pages/multiplayer_page.dart';
import 'package:quizgyan/pages/play_quiz_page.dart';

class QuizSection extends StatefulWidget {
  const QuizSection({super.key});

  @override
  State<QuizSection> createState() => _QuizSectionState();
}

class _QuizSectionState extends State<QuizSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const PlayQuizPage(),
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue,
                        
                      ),
                      child: const Icon(Icons.quiz)),
                  ),
                  const Text(
                    'Play Quiz',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
             TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const MultiplayerPage(),
                ));
              },
               child: Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue,
                        
                      ),
                      child: const Icon(Icons.people)),
                    const Text(
                      'Multiplayer',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                           ),
             ),
          ],
        ),
      ],
    );
  }
}
