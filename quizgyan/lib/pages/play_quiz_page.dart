
import 'package:flutter/material.dart';
import 'package:quizgyan/components/level_button.dart';

class PlayQuizPage extends StatelessWidget {
  const PlayQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SelectLevelPage(),
    );
  }
}

class SelectLevelPage extends StatelessWidget {
  const SelectLevelPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D006B),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back arrow
            // IconButton(
            //   icon: const Icon(Icons.arrow_back, color: Colors.white),
            //   onPressed: () {
            //     // Navigator.pop(context);
            //   },
            // ),
            const SizedBox(height: 10),
      
            // Title
            const Center(
              child: Text(
                'SELECT LEVEL',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 30),
      
            // Grid of levels
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                // physics: const NeverScrollableScrollPhysics(),
                children: [
                  LevelButton(level: '1', unlocked: true, stars: 0),
                  LevelButton(level: '2', unlocked: true, stars: 0),
                  LevelButton(level: '3', unlocked: true, stars: 0),
                  LevelButton(level: '4', unlocked: true, stars: 0),
                  LevelButton(level: '5', unlocked: true, stars: 0),
                  LevelButton(level: '6', unlocked: true, stars: 0),
                  LevelButton(level: '7', unlocked: true, stars: 0),
                  LevelButton(level: '8', unlocked: true, stars: 0),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.forward,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

