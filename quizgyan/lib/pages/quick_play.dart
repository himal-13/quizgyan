import 'package:flutter/material.dart';
import 'package:quizgyan/services/audio_services.dart';
import 'dart:async'; // For Timer
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart'; // Import shared_preferences
import 'dart:convert'; // For JSON encoding/decoding

import '../constants/questions.dart'; // For Random

// Main QuickPlayQuizPage Widget
class QuickPlayQuizPage extends StatefulWidget {
  const QuickPlayQuizPage({super.key});

  @override
  State<QuickPlayQuizPage> createState() => _QuickPlayQuizPageState();
}

class _QuickPlayQuizPageState extends State<QuickPlayQuizPage> {
  List<Question> _allQuestions = [];
  int _currentQuestionIndex = 0;
  int _score = 0;
  int _timeLeft = 60; // Initial total game time in seconds
  Timer? _timer;
  bool _quizEnded = false;
  String? _selectedOption;
  bool _answerChecked = false;
  int _questionsAnswered = 0; // Tracks total questions attempted
  int _correctAnswersCount = 0; // New: Tracks number of correct answers
  bool _showStartMenu = true; // New: To control visibility of start menu
  List<int> _highScores = []; // New: To store high scores

  @override
  void initState() {
    super.initState();
    _loadHighScores(); // Load high scores when the page initializes
  }

  // Function to load high scores from shared preferences
  Future<void> _loadHighScores() async {
    final prefs = await SharedPreferences.getInstance();
    final String? highScoresString = prefs.getString('quickPlayHighScores');
    if (highScoresString != null) {
      setState(() {
        _highScores = (jsonDecode(highScoresString) as List)
            .map((e) => e as int)
            .toList();
        _highScores.sort((a, b) => b.compareTo(a)); // Sort in descending order
      });
    }
  }

  // Function to save a new high score
  Future<void> _saveHighScore(int newScore) async {
    final prefs = await SharedPreferences.getInstance();
    _highScores.add(newScore);
    _highScores.sort((a, b) => b.compareTo(a)); // Sort in descending order
    if (_highScores.length > 3) {
      _highScores = _highScores.sublist(0, 3); // Keep only top 3
    }
    await prefs.setString('quickPlayHighScores', jsonEncode(_highScores));
    setState(() {}); // Update UI to reflect new high scores
  }

  void _initializeQuiz() {
    // Use all questions and shuffle them, removing level filtering
    _allQuestions = List<Question>.from(nepaliQuizQuestions)..shuffle(Random());
    _currentQuestionIndex = 0;
    _score = 0;
    _timeLeft = 60; // Reset to 60 seconds for a new game
    _quizEnded = false;
    _selectedOption = null;
    _answerChecked = false;
    _questionsAnswered = 0; // Reset for a new game
    _correctAnswersCount = 0; // Reset correct answers count
    _showStartMenu = false; // Hide start menu when quiz starts
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel(); // Cancel any existing timer
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeLeft > 0 && !_quizEnded) {
        setState(() {
          _timeLeft--;
        });
      } else {
        _endGame();
      }
    });
  }

  void _checkAnswer(String selectedAnswer) async {
    if (_answerChecked || _quizEnded) {
      return; // Prevent multiple selections or selection after game over
    }

    setState(() {
      _selectedOption = selectedAnswer;
      _answerChecked = true;
      _questionsAnswered++; // Increment answered questions regardless of correctness
    });

    final currentQuestion = _allQuestions[_currentQuestionIndex];

    if (selectedAnswer == currentQuestion.answer) {
      SoundService().playSuccess();
      setState(() {
        _score += 10; // Award 10 points for correct answer
        _correctAnswersCount++; // Increment correct answers count
      });
    } else {
      SoundService().playFailed();
      setState(() {
        _score -= 2; // Deduct 2 points for wrong answer
      });
    }

    // Wait a bit before moving to the next question or ending the game
    Future.delayed(Duration(seconds: 1), () {
      if (_currentQuestionIndex < _allQuestions.length - 1) {
        setState(() {
          _currentQuestionIndex++;
          _selectedOption = null; // Reset selected option for next question
          _answerChecked = false; // Reset answer checked state
          // Timer continues, no reset per question
        });
      } else {
        _endGame(); // End game if all questions are answered
      }
    });
  }

  void _endGame() {
    _timer?.cancel();
    SoundService().playGameOver();
    setState(() {
      _quizEnded = true;
    });
    _saveHighScore(_score); // Save the score
    _showGameOverDialog();
  }

  void _showGameOverDialog() {
    double accuracy = 0.0;
    if (_questionsAnswered > 0) {
      // Calculate accuracy based on _correctAnswersCount
      accuracy = (_correctAnswersCount / _questionsAnswered) * 100;
    }

    showDialog(
      context: context,
      barrierDismissible: false, // User must tap button to dismiss
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.deepPurple.shade700,
          title: Text(
            'खेल समाप्त!',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'तपाईंको स्कोर: $_score', // Display total score
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Correct Answers: $_correctAnswersCount / $_questionsAnswered', // Show correct answers vs total attempted
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Accuracy: ${accuracy.toStringAsFixed(2)}%', // Display accuracy
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  setState(() {
                    _showStartMenu = true; // Show start menu for next game
                  });
                  _initializeQuiz(); // Restart the quiz
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'फेरि खेल्नुहोस्',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              SizedBox(height: 10), // Space between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  Navigator.of(
                    context,
                  ).pop(); // Navigate back to previous screen (e.g., home)
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Quit button color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'Quit', // English "Quit" button
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_showStartMenu) {
      return Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Quick Play Quiz',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Test your knowledge with a timed quiz! Answer as many questions as you can in 60 seconds.',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: _initializeQuiz,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Start Quiz',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'High Scores (Top 3)',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(height: 10),
                _highScores.isEmpty
                    ? Text(
                        'No high scores yet!',
                        style: TextStyle(fontSize: 16, color: Colors.white54),
                      )
                    : Column(
                        children: _highScores
                            .asMap()
                            .entries
                            .map(
                              (entry) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4.0,
                                ),
                                child: Text(
                                  '${entry.key + 1}. ${entry.value} points',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
              ],
            ),
          ),
        ),
      );
    }

    if (_allQuestions.isEmpty) {
      return Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: Center(
          child: Text(
            'प्रश्नहरू उपलब्ध छैनन्।', // Updated message
            style: TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    final currentQuestion = _allQuestions[_currentQuestionIndex];

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Top Bar: Timer, Score
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Timer
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(46, 0, 0, 0),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.timer, color: Colors.green.shade700),
                        SizedBox(width: 5),
                        Text(
                          '$_timeLeft',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Score
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red.shade700,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'SCORE $_score',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Question Card
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade700,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(80, 0, 0, 0),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Text(
                  "${currentQuestion.question}(${currentQuestion.questionEnglish})",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Options
              Expanded(
                child: ListView.builder(
                  itemCount: currentQuestion.options.length,
                  itemBuilder: (context, index) {
                    final option = currentQuestion.options[index];
                    Color optionColor = Colors.blue.shade700; // Default color
                    if (_answerChecked) {
                      if (option == currentQuestion.answer) {
                        optionColor = Colors.green.shade700; // Correct answer
                      } else if (option == _selectedOption) {
                        optionColor = Colors.red.shade700; // Wrong selected
                      }
                    }

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestureDetector(
                        onTap: () => _checkAnswer(option),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: optionColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(75, 0, 0, 0),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              // Placeholder for image (as per request, same image for each option)
                              // You can replace this with an actual image asset if available
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    String.fromCharCode(
                                      65 + index,
                                    ), // A, B, C, D
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  option,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
