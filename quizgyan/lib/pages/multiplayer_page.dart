import 'package:flutter/material.dart';
import 'package:quizgyan/pages/two_player_play.dart'; // Make sure this path is correct

class MultiplayerPage extends StatefulWidget {
  const MultiplayerPage({super.key});

  @override
  State<MultiplayerPage> createState() => _MultiplayerPageState();
}

class _MultiplayerPageState extends State<MultiplayerPage> {
  int selectedQuestions = 20; // Default to 20 questions
  // Create individual controllers for each player
  final TextEditingController _player1Controller = TextEditingController(
    text: 'Player 1',
  );
  final TextEditingController _player2Controller = TextEditingController(
    text: 'Player 2',
  );

  @override
  void dispose() {
    _player1Controller.dispose();
    _player2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D006B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                "2 Player Mode",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFDEBCF),
                ),
              ),
              const SizedBox(height: 30),
              // Player Name Editing
              buildSectionTitle("PLAYER NAMES"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  controller: _player1Controller,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Player 1 Name',
                    labelStyle: const TextStyle(color: Color(0xFFFDEBCF)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFF7A4434)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFFDEBCF)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  controller: _player2Controller,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Player 2 Name',
                    labelStyle: const TextStyle(color: Color(0xFFFDEBCF)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFF7A4434)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFFDEBCF)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Number of Questions
              buildSectionTitle("NUMBER OF QUESTIONS"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(16, (index) {
                    // Generates numbers from 20 to 50, incrementing by 2
                    int num = 20 + (index * 2);
                    return buildOptionButton(
                      label: "$num",
                      isSelected: selectedQuestions == num,
                      onTap: () {
                        setState(() {
                          selectedQuestions = num;
                        });
                      },
                    );
                  }),
                ),
              ),
              const SizedBox(height: 30),

              const Spacer(),

              // Start Button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TwoPlayerPlay(
                        totalQuestions: selectedQuestions,
                        player1Name:
                            _player1Controller.text, // Pass individual names
                        player2Name: _player2Controller.text,
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 60,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF5C5C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
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
        style: const TextStyle(
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
            color: isSelected
                ? const Color(0xFFFDEBCF)
                : const Color(0xFF7A4434),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? const Color(0xFF5C2E1F) : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
