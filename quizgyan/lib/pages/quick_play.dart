import 'package:flutter/material.dart';
import 'dart:async'; // For Timer
import 'dart:math';

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
  int _timeLeft =
      60; // Initial total game time in seconds (CHANGED to 60 seconds)
  Timer? _timer;
  bool _quizEnded = false;
  String? _selectedOption;
  bool _answerChecked = false;
  int _questionsAnswered = 0; // New: To track how many questions were attempted

  @override
  void initState() {
    super.initState();
    _initializeQuiz();
  }

  void _initializeQuiz() {
    // Use all questions and shuffle them, removing level filtering
    _allQuestions = List<Question>.from(nepaliQuizQuestions)..shuffle(Random());
    _currentQuestionIndex = 0;
    _score = 0;
    _timeLeft = 60; // Reset to 60 seconds for a new game (CHANGED)
    _quizEnded = false;
    _selectedOption = null;
    _answerChecked = false;
    _questionsAnswered = 0; // Reset for a new game
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

  void _checkAnswer(String selectedAnswer) {
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
      setState(() {
        _score++;
        _timeLeft += 3; // Add 3 seconds for a correct answer
      });
    } else {
      setState(() {
        _timeLeft -= 2; // Subtract 2 seconds for a wrong answer
        if (_timeLeft < 0) _timeLeft = 0; // Ensure time doesn't go negative
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
    setState(() {
      _quizEnded = true;
    });
    // You can navigate to a results screen or show a dialog here
    _showGameOverDialog();
  }

  void _showGameOverDialog() {
    double accuracy = 0.0;
    if (_questionsAnswered > 0) {
      accuracy = (_score / _questionsAnswered) * 100;
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
                'तपाईंको स्कोर: $_score / $_questionsAnswered', // Show score out of answered questions
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'सटीकता: ${accuracy.toStringAsFixed(2)}%', // Display accuracy
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
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
