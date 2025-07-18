import 'package:flutter/material.dart';
import 'package:quizgyan/constants/level_questions.dart';
import 'package:quizgyan/pages/level_play.dart';

class LevelsPage extends StatelessWidget {
  // Determine the maximum level available from your quizQuestions
  final int maxLevel = quizQuestions
      .map((q) => q.gameLevel)
      .reduce((a, b) => a > b ? a : b);

  LevelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Level', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple.shade800, Colors.deepPurple.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: GridView.builder(
          padding: const EdgeInsets.all(16.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 600
                ? 4
                : 2, // Responsive grid
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 1.0,
          ),
          itemCount: maxLevel,
          itemBuilder: (context, index) {
            final level = index + 1;
            return LevelCard(level: level);
          },
        ),
      ),
    );
  }
}

class LevelCard extends StatelessWidget {
  final int level;

  const LevelCard({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white.withOpacity(0.9),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LevelPlay(currentLevel: level),
            ),
          );
        },
        borderRadius: BorderRadius.circular(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 48, color: Colors.amber.shade700),
              SizedBox(height: 10),
              Text(
                'Level $level',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
