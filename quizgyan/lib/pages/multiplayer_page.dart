import 'package:flutter/material.dart';
import 'package:quizgyan/pages/multiplayer_play_page.dart';



class MultiplayerPage extends StatefulWidget {
  const MultiplayerPage({super.key});

  @override
  State<MultiplayerPage> createState() => _MultiplayerPageState();
}

class _MultiplayerPageState extends State<MultiplayerPage> {
  int selectedPlayers = 2;
  int selectedQuestions = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D006B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // SETTINGS heading
              Text(
                "Multiplayer Mode",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFDEBCF),
                ),
              ),
              const SizedBox(height: 30),
                buildSectionTitle("GAME RULES"),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF4D2418),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ruleText("1. Each player takes turns to answer."),
                    ruleText("2. The first player answers a question, then the second player."),
                    ruleText("3. Player have to choose remianing question as number remaining on the screen."),
                    ruleText("4. Correct answer for first player will get 5 points and 3 points for second player."),
                    ruleText("5. Incorrect answer: no penalty."),
                    ruleText("6. Most points win the game."),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Number of Players
              buildSectionTitle("NUMBER OF PLAYERS"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [2, 3, 4].map((player) {
                  return buildOptionButton(
                    label: "$player",
                    isSelected: selectedPlayers == player,
                    onTap: () {
                      setState(() {
                        // selectedPlayers = player;
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),

              // Number of Questions
              buildSectionTitle("NUMBER OF QUESTIONS"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [20, 30, 40].map((num) {
                  return buildOptionButton(
                    label: "$num",
                    isSelected: selectedQuestions == num,
                    onTap: () {
                      setState(() {
                        // selectedQuestions = num;
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 30),

              // Game Rules
            
              Spacer(),

              // Start Button
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => MultiplayerPlayPage(),
                    ),
                  );
                  // Handle start logic
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF5C5C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "START",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFFFDEBCF),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildOptionButton({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? Color(0xFFFDEBCF) : Color(0xFF7A4434),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Color(0xFF5C2E1F) : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget ruleText(String rule) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        rule,
        style: TextStyle(
          color: Color(0xFFFDEBCF),
          fontSize: 16,
        ),
      ),
    );
  }
}
