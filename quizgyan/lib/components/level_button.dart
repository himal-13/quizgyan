import 'package:flutter/material.dart';
import 'package:quizgyan/pages/level_page.dart';

class LevelButton extends StatelessWidget {
  final String level;
  final bool unlocked;
  final int stars;
  const LevelButton({super.key,required this.level, this.unlocked =false, this.stars = 0});

  String get number => level; // Display the level number
  String get levelText => 'Level $level'; // Text to display for the level

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
      },
      child: Container(
        height: MediaQuery.of(context).size.width * 0.2,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          color: unlocked ? Colors.green : Colors.purple[700],
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => LevelPage(level: int.parse(level))));

          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: unlocked ? Colors.white : Colors.grey[400],
                ),
              ),
              const SizedBox(height: 4),
              if (unlocked && stars > 0)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Icon(
                      Icons.star,
                      size: 14,
                      color: index < stars ? Colors.yellow : Colors.grey,
                    ),
                  ),
                )
              else if (!unlocked)
                const Icon(Icons.lock, size: 16, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
