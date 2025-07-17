import 'package:flutter/material.dart';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}

class ThreeMultiplayer extends StatefulWidget {
  final List<String> playerNames;

  const ThreeMultiplayer({super.key, required this.playerNames});

  @override
  State<ThreeMultiplayer> createState() => _ThreeMultiplayerState();
}

class _ThreeMultiplayerState extends State<ThreeMultiplayer> {
  late List players;
  int currentPlayerIndex = 0;
  List<Question> questions = []; // Populate this with your questions
  Set<int> answeredQuestions = {};
  Question? currentQuestion;
  int? selectedQuestionNumber;

  @override
  void initState() {
    super.initState();
    players = [
      Player(name: widget.playerNames[0], color: Colors.red),
      Player(name: widget.playerNames[1], color: Colors.blue),
      Player(name: widget.playerNames[2], color: Colors.green),
    ];
    _loadQuestions(); // Call a method to populate your questions list
  }

  void _loadQuestions() {
    questions = [
      Question(
        questionText: "What is the capital of France?",
        options: ["Berlin", "Madrid", "Paris", "Rome"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "Which planet is known as the Red Planet?",
        options: ["Earth", "Mars", "Jupiter", "Venus"],
        correctAnswerIndex: 1,
      ),
      // Add more questions here
    ];
  }

  void _selectQuestion(int questionNumber) {
    if (!answeredQuestions.contains(questionNumber - 1)) {
      setState(() {
        selectedQuestionNumber = questionNumber;
        currentQuestion = questions[questionNumber - 1];
      });
    }
  }

  void _answerQuestion(int selectedOptionIndex) {
    if (currentQuestion != null) {
      if (selectedOptionIndex == currentQuestion!.correctAnswerIndex) {
        setState(() {
          players[currentPlayerIndex].score++;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Correct!"),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Wrong answer."),
            backgroundColor: Colors.red,
          ),
        );
      }

      setState(() {
        answeredQuestions.add(selectedQuestionNumber! - 1);
        currentQuestion = null;
        selectedQuestionNumber = null;
        currentPlayerIndex =
            (currentPlayerIndex + 1) % players.length; // Next player's turn
      });

      if (answeredQuestions.length == questions.length) {
        _showGameEndDialog();
      }
    }
  }

  void _showGameEndDialog() {
    // Determine winner
    Player winner = players.reduce((a, b) => a.score > b.score ? a : b);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Game Over!"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Winner: ${winner.name} with ${winner.score} points!"),
              const SizedBox(height: 10),
              // Display all player scores
              ...players
                  .map((p) => Text("${p.name}: ${p.score} points"))
                  .toList(),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Play Again"),
              onPressed: () {
                // Reset game state
                Navigator.of(context).pop(); // Close dialog
                Navigator.of(
                  context,
                ).pop(); // Go back to player setup or restart game
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Player currentPlayer = players[currentPlayerIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Current Player: ${currentPlayer.name} (Score: ${currentPlayer.score})",
          style: TextStyle(
            color: currentPlayer.color,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: currentPlayer.color.withOpacity(
          0.2,
        ), // Subtle background
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Player score display
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: players.map((player) {
                return Column(
                  children: [
                    Text(
                      player.name,
                      style: TextStyle(
                        color: player.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Score: ${player.score}"),
                  ],
                );
              }).toList(),
            ),
            const Divider(height: 30),

            // Question selection grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final int questionNumber = index + 1;
                  final bool isAnswered = answeredQuestions.contains(index);
                  final bool isSelected =
                      selectedQuestionNumber == questionNumber;

                  return ElevatedButton(
                    onPressed: isAnswered
                        ? null
                        : () => _selectQuestion(questionNumber),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isAnswered
                          ? Colors.grey
                          : isSelected
                          ? currentPlayer.color.withOpacity(0.7)
                          : Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: BorderSide(
                        color: isSelected
                            ? currentPlayer.color
                            : Colors.transparent,
                        width: isSelected ? 3.0 : 0.0,
                      ),
                    ),
                    child: Text(
                      '$questionNumber',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(height: 30),

            // Current question and answer options
            if (currentQuestion != null)
              Column(
                children: [
                  Text(
                    currentQuestion!.questionText,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ...currentQuestion!.options.asMap().entries.map((entry) {
                    int optionIndex = entry.key;
                    String optionText = entry.value;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => _answerQuestion(optionIndex),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: currentPlayer.color.withOpacity(
                              0.8,
                            ),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            textStyle: const TextStyle(fontSize: 18),
                          ),
                          child: Text(optionText),
                        ),
                      ),
                    );
                  }).toList(),
                ],
              )
            else
              const Text(
                "Select a question from the grid above.",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}

class Player {
  final String name;
  final Color color;
  int score;

  Player({required this.name, required this.color, this.score = 0});
}
