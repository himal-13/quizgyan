import 'package:flutter/material.dart';
import 'dart:async'; // For Timer
import 'dart:math'; // For Random

import '../constants/questions.dart'; // Assuming this file contains your Question class and nepaliQuizQuestions list

// Main RoundsPage Widget
class RoundsPage extends StatefulWidget {
  const RoundsPage({super.key});

  @override
  State<RoundsPage> createState() => _RoundsPageState();
}

class _RoundsPageState extends State<RoundsPage> {
  // List of all questions for the entire game (15 questions total)
  List<Question> _allGameQuestions = [];
  // Index to track the current round (0: Basic, 1: Buzzer, 2: Rapid Fire)
  int _currentRoundIndex = 0;
  // Questions for the current active round
  List<Question> _currentRoundQuestions = [];
  // Index to track the current question within the active round
  int _currentQuestionIndexInRound = 0;
  // Total score across all rounds
  int _score = 0;
  // Time left for the current question or round
  int _timeLeft = 0;
  // Timer instance
  Timer? _timer;
  // Flag to indicate if the quiz has ended
  bool _quizEnded = false;
  // The option selected by the user for the current question
  String? _selectedOption;
  // Flag to indicate if the answer for the current question has been checked
  bool _answerChecked = false;
  // Flag specific to the Buzzer Round: true when the buzzer is clicked and options are revealed
  bool _buzzerClicked = false;

  // Names of the rounds for display
  final List<String> _roundNames = [
    'Basic Round',
    'Buzzer Round',
    'Rapid Fire Round',
  ];

  // Descriptions for each round
  final List<String> _roundDescriptions = [
    'Answer 5 questions. Each question has 15 seconds. Correct answer: +10 points.',
    'Answer 5 questions. Each question has 15 seconds. Click the buzzer to reveal options. Correct answer: +15 points, Wrong answer: -5 points.',
    'Answer 5 questions in 20 seconds. Correct answer: +5 points.',
  ];

  @override
  void initState() {
    super.initState();
    // Game starts automatically when the page is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeGame();
    });
  }

  // Initializes the entire game, setting up questions and showing the first round intro
  void _initializeGame() {
    // Shuffle all available questions and select the first 15 for the game
    List<Question> shuffledQuestions = List<Question>.from(nepaliQuizQuestions)
      ..shuffle(Random());
    _allGameQuestions = shuffledQuestions.sublist(
      0,
      shuffledQuestions.length >= 15 ? 15 : shuffledQuestions.length,
    ); // Take max 15 questions

    // Reset game state
    _currentRoundIndex = 0;
    _currentQuestionIndexInRound = 0;
    _score = 0;
    _quizEnded = false;
    _selectedOption = null;
    _answerChecked = false;
    _buzzerClicked = false;

    // Directly prepare and start the first round without showing an intro dialog
    _prepareRound();
    _startRoundActual();
  }

  // Prepares the questions and time for a new round, then shows the intro dialog
  void _prepareRound() {
    _timer?.cancel(); // Cancel any existing timer

    // Determine the 5 questions for the current round
    int startQuestionIndex = _currentRoundIndex * 5;
    int endQuestionIndex = startQuestionIndex + 5;
    // Ensure we don't go out of bounds if there are fewer than 15 questions
    if (startQuestionIndex >= _allGameQuestions.length) {
      _endGame(); // No more questions available
      return;
    }
    _currentRoundQuestions = _allGameQuestions.sublist(
      startQuestionIndex,
      endQuestionIndex > _allGameQuestions.length
          ? _allGameQuestions.length
          : endQuestionIndex,
    );

    // Reset question index within the round and answer states
    _currentQuestionIndexInRound = 0;
    _selectedOption = null;
    _answerChecked = false;
    _buzzerClicked = false; // Reset buzzer state for new round

    // Set initial time for the round/question based on round type
    if (_currentRoundIndex == 0) {
      _timeLeft = 15; // Basic Round: 15 seconds per question
    } else if (_currentRoundIndex == 1) {
      _timeLeft = 15; // Buzzer Round: 15 seconds per question
    } else if (_currentRoundIndex == 2) {
      _timeLeft = 20; // Rapid Fire Round: 20 seconds for all 5 questions
    }
    // Update state to reflect prepared round data
    setState(() {});
  }

  // Displays a dialog introducing the current round
  void _showRoundIntroDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, // User must tap button to dismiss
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.blueGrey.shade800,
          title: Text(
            _roundNames[_currentRoundIndex],
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _roundDescriptions[_currentRoundIndex],
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  _startRoundActual(); // Start the round after intro
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700, // Button color
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Start Round',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
    _prepareRound(); // Prepare questions and time while dialog is shown
  }

  // Starts the actual timer and question display for the current round
  void _startRoundActual() {
    _startTimer(); // Start the timer for the new round
  }

  // Starts the countdown timer
  void _startTimer() {
    _timer?.cancel(); // Ensure only one timer is active
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeLeft > 0 && !_quizEnded) {
        setState(() {
          _timeLeft--;
        });
      } else {
        // Time's up for the current question/round
        if (_currentRoundIndex == 2) {
          // For Rapid Fire, if time runs out, the round ends
          _nextQuestionOrRound();
        } else if (_currentRoundIndex == 1 && !_buzzerClicked) {
          // NEW: For Buzzer Round, if time runs out and buzzer was NOT clicked, no penalty.
          _nextQuestionOrRound();
        } else {
          // For Basic Round, or Buzzer Round if buzzer WAS clicked,
          // if time runs out and no answer was checked, treat as wrong.
          if (!_answerChecked) {
            _checkAnswer(''); // Treat as unanswered/wrong
          } else {
            _nextQuestionOrRound();
          }
        }
      }
    });
  }

  // Handles checking the selected answer against the correct answer
  void _checkAnswer(String selectedAnswer) {
    // Prevent multiple selections or actions after game ends
    if (_answerChecked || _quizEnded) {
      return;
    }

    setState(() {
      _selectedOption = selectedAnswer;
      _answerChecked = true;
    });

    final currentQuestion =
        _currentRoundQuestions[_currentQuestionIndexInRound];
    bool isCorrect = (selectedAnswer == currentQuestion.answer);

    // Apply scoring rules based on the current round
    if (_currentRoundIndex == 0) {
      // Basic Round
      if (isCorrect) {
        setState(() {
          _score += 10;
        });
      }
    } else if (_currentRoundIndex == 1) {
      // Buzzer Round
      // Only apply scoring if buzzer was clicked
      if (_buzzerClicked) {
        if (isCorrect) {
          setState(() {
            _score += 15;
          });
        } else {
          setState(() {
            _score -= 5;
          });
        }
      }
      // If buzzer was not clicked, no score change, and this checkAnswer
      // should ideally only be called when time runs out without buzzer,
      // which is now handled by _startTimer to just move on.
    } else if (_currentRoundIndex == 2) {
      // Rapid Fire Round
      if (isCorrect) {
        setState(() {
          _score += 5;
        });
      }
    }

    // Wait for a short duration to show feedback before moving to the next question
    Future.delayed(const Duration(seconds: 1), () {
      _nextQuestionOrRound();
    });
  }

  // Moves to the next question or the next round
  void _nextQuestionOrRound() {
    if (_currentQuestionIndexInRound < _currentRoundQuestions.length - 1) {
      // Move to the next question in the current round
      setState(() {
        _currentQuestionIndexInRound++;
        _selectedOption = null; // Reset selected option
        _answerChecked = false; // Reset answer checked state
        _buzzerClicked =
            false; // Reset buzzer for next question in Buzzer Round

        // Reset timer for Basic and Buzzer rounds (per question timer)
        if (_currentRoundIndex == 0 || _currentRoundIndex == 1) {
          _timeLeft = 15;
        }
      });
    } else {
      // All questions in the current round are answered, move to the next round
      _timer?.cancel(); // Stop timer for current round
      if (_currentRoundIndex < _roundNames.length - 1) {
        setState(() {
          _currentRoundIndex++;
        });
        _showRoundIntroDialog(); // Show intro for the next round
      } else {
        // All rounds are completed, end the game
        _endGame();
      }
    }
  }

  // Ends the entire game
  void _endGame() {
    _timer?.cancel();
    setState(() {
      _quizEnded = true;
    });
    _showGameOverDialog(); // Show game over dialog
  }

  // Displays the game over dialog with final score and restart option
  void _showGameOverDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, // User must tap button to dismiss
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.deepPurple.shade700,
          title: const Text(
            'खेल समाप्त!',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'तपाईंको स्कोर: $_score',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  _initializeGame(); // Restart the entire game
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, // Button color
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'फेरि खेल्नुहोस्',
                  style: TextStyle(fontSize: 18, color: Colors.black),
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
    _timer?.cancel(); // Cancel timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Show a loading/empty state if questions are not yet loaded or available
    if (_allGameQuestions.isEmpty || _currentRoundQuestions.isEmpty) {
      return Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: const Center(
          child: Text(
            'प्रश्नहरू उपलब्ध छैनन्।',
            style: TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    final currentQuestion =
        _currentRoundQuestions[_currentQuestionIndexInRound];

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Top Bar: Timer, Round Name, Score
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Timer Display
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(88, 0, 0, 0),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.timer, color: Colors.green.shade700),
                        const SizedBox(width: 5),
                        Text(
                          '$_timeLeft',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Round Name Display
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      _roundNames[_currentRoundIndex].toUpperCase(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Score Display
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red.shade700,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'SCORE $_score',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Quiz Title

              // Question Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade700,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(84, 0, 0, 0),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Text(
                  "${currentQuestion.question}(${currentQuestion.questionEnglish})",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Buzzer Button for Buzzer Round (before buzzer clicked)
              if (_currentRoundIndex == 1 && !_buzzerClicked)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _buzzerClicked = true; // Reveal options
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple, // Buzzer button color
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      'BUZZER',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              // Options
              Expanded(
                child: ListView.builder(
                  // Options are only shown if it's not the Buzzer Round, or if the buzzer has been clicked in the Buzzer Round
                  itemCount: (_currentRoundIndex == 1 && !_buzzerClicked)
                      ? 0
                      : currentQuestion.options.length,
                  itemBuilder: (context, index) {
                    final option = currentQuestion.options[index];
                    Color optionColor = Colors.blue.shade700; // Default color

                    // Determine color feedback after answer is checked
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
                        // Disable tapping if answer is already checked or quiz ended
                        onTap: _answerChecked || _quizEnded
                            ? null
                            : () => _checkAnswer(option),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: optionColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(53, 0, 0, 0),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
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
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  option,
                                  style: const TextStyle(
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
