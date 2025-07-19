import 'package:flutter/material.dart';
import 'package:quizgyan/constants/level_questions.dart';
import 'package:quizgyan/pages/level_play.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import shared_preferences

class LevelsPage extends StatefulWidget {
  LevelsPage({super.key});

  @override
  State<LevelsPage> createState() => _LevelsPageState();
}

class _LevelsPageState extends State<LevelsPage> {
  int _highestCompletedLevel =
      0; // Default to 0, meaning no levels completed yet

  // Determine the maximum level available from your quizQuestions
  final int maxLevel = quizQuestions
      .map((q) => q.gameLevel)
      .reduce((a, b) => a > b ? a : b);

  @override
  void initState() {
    super.initState();
    _loadHighestCompletedLevel();
  }

  // Function to load the highest completed level from shared preferences
  Future<void> _loadHighestCompletedLevel() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _highestCompletedLevel = prefs.getInt('highestCompletedLevel') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Level', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade400,
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
            // A level is unlocked if it's the first level, or if the previous level has been completed.
            final bool isUnlocked =
                level == 1 || level <= _highestCompletedLevel + 1;

            return LevelCard(
              level: level,
              isUnlocked: isUnlocked,
              onLevelSelected: () {
                // When a level is selected, reload the highest completed level
                // to ensure the UI is up-to-date when returning from LevelPlay.
                _loadHighestCompletedLevel();
              },
            );
          },
        ),
      ),
    );
  }
}

class LevelCard extends StatelessWidget {
  final int level;
  final bool isUnlocked;
  final VoidCallback onLevelSelected; // Callback to notify parent of selection

  const LevelCard({
    super.key,
    required this.level,
    required this.isUnlocked,
    required this.onLevelSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: isUnlocked
          ? Colors.white.withOpacity(0.9)
          : Colors.grey.shade700.withOpacity(0.7), // Dim if locked
      child: InkWell(
        onTap: isUnlocked
            ? () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LevelPlay(currentLevel: level),
                  ),
                );
                onLevelSelected(); // Call the callback when returning from LevelPlay
              }
            : null, // Disable tap if locked
        borderRadius: BorderRadius.circular(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isUnlocked ? Icons.star : Icons.lock,
                size: 48,
                color: isUnlocked
                    ? Colors.amber.shade700
                    : Colors.white.withOpacity(0.5), // Dim lock icon
              ),
              SizedBox(height: 10),
              Text(
                'Level $level',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: isUnlocked
                      ? Colors.deepPurple
                      : Colors.white.withOpacity(0.5), // Dim text if locked
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
