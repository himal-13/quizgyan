import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

import '../constants/level_questions.dart';

class LevelPlay extends StatefulWidget {
  final int currentLevel;

  const LevelPlay({super.key, required this.currentLevel});

  @override
  State<LevelPlay> createState() => _LevelPlayState();
}

class _LevelPlayState extends State<LevelPlay> {
  List<Question> _levelQuestions = [];
  List<Question> _selectedQuestions = [];
  int _currentQuestionIndex = 0;
  int _score = 0;
  Timer? _timer;
  int _secondsRemaining = 60; // Default to 60 seconds
  bool _quizEnded = false;
  bool _answerSelected = false;
  int? _selectedOptionIndex;
  String _message = '';

  // Define the gradient colors for the options
  final List<List<Color>> _optionGradients = [
    [Color(0xFF5B67F2), Color(0xFF4A55D1)], // Blue gradient
    [Color(0xFF00C4B8), Color(0xFF00A093)], // Teal gradient
    [Color(0xFFFFC107), Color(0xFFFFA000)], // Orange gradient
    [Color(0xFFE91E63), Color(0xFFC2185B)], // Pink/Magenta gradient
  ];

  @override
  void initState() {
    super.initState();
    _loadQuestionsForLevel();
    // Set initial time based on level
    if (widget.currentLevel >= 1 && widget.currentLevel <= 3) {
      _secondsRemaining = 100;
    } else {
      _secondsRemaining = 60;
    }
    _startTimer();
  }

  void _loadQuestionsForLevel() {
    // Filter questions by the current level
    _levelQuestions = quizQuestions
        .where((q) => q.gameLevel == widget.currentLevel)
        .toList();

    // Shuffle and select 8 random questions
    _levelQuestions.shuffle(Random());
    _selectedQuestions = _levelQuestions.take(8).toList();

    if (_selectedQuestions.isEmpty) {
      // Handle case where no questions are available for the level
      _message = "No questions available for this level.";
      _quizEnded = true;
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      }
      // If time runs out or quiz ends due to questions finished, end quiz
      if (_secondsRemaining <= 0 && !_quizEnded) {
        _timer?.cancel();
        _endQuiz(timeUp: true);
      }
    });
  }

  void _handleAnswer(int selectedOption) {
    if (_quizEnded || _answerSelected) {
      return; // Prevent multiple selections or answering after quiz ends
    }

    setState(() {
      _selectedOptionIndex = selectedOption;
      _answerSelected = true;
      final currentQuestion = _selectedQuestions[_currentQuestionIndex];
      if (selectedOption == currentQuestion.correctAnswerIndex) {
        _score++;
      }
    });

    // Move to next question after a short delay
    Future.delayed(Duration(seconds: 1), () {
      _nextQuestion();
    });
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _selectedQuestions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _answerSelected = false; // Reset for next question
        _selectedOptionIndex = null; // Clear selected option highlight
      });
    } else {
      _endQuiz();
    }
  }

  void _endQuiz({bool timeUp = false}) {
    _timer?.cancel();
    setState(() {
      _quizEnded = true;
      if (timeUp) {
        _message = "Time's up! Quiz Over.";
      } else {
        _message = "Quiz Completed!";
      }
    });

    // Show results dialog
    _showResultDialog();
  }

  void _showResultDialog() {
    bool passed = _score >= 7;
    String resultStatusText = passed ? 'Level Complete!' : 'Level Failed!';
    Color iconColor = passed ? Colors.green.shade300 : Colors.red.shade300;
    IconData icon = passed ? Icons.check_circle_outline : Icons.cancel_outlined;

    // Calculate accuracy
    double accuracy = _selectedQuestions.isNotEmpty
        ? (_score / _selectedQuestions.length) * 100
        : 0.0;
    String accuracyText = accuracy.toStringAsFixed(2);

    // Determine if the next level is available
    final int maxAvailableLevel = quizQuestions
        .map((q) => q.gameLevel)
        .reduce((a, b) => a > b ? a : b);

    showDialog(
      context: context,
      barrierDismissible: false, // User must tap button to dismiss
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor:
              Colors.deepPurple.shade900, // Dark background for dialog
          title: Text(
            resultStatusText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: passed ? Colors.green.shade400 : Colors.red.shade400,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: iconColor, size: 80),
              SizedBox(height: 15),
              Text(
                'You scored $_score out of ${_selectedQuestions.length} questions.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              Text(
                'Accuracy: $accuracyText%',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 10),
              Text(
                'You need to answer 7 questions correctly to pass this level.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white54),
              ),
            ],
          ),
          actionsAlignment: MainAxisAlignment.center, // Center the buttons
          actions: <Widget>[
            // The "Next Level" and "Menu" or "Retry" and "Menu" buttons based on outcome
            if (passed && widget.currentLevel < maxAvailableLevel) ...[
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Dismiss current dialog
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          LevelPlay(currentLevel: widget.currentLevel + 1),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Green for NEXT
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'NEXT LEVEL',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Dismiss dialog
                  Navigator.pop(context); // Go back to LevelsPage
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Red for MENU
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('MENU', style: TextStyle(color: Colors.white)),
              ),
            ] else if (passed && widget.currentLevel >= maxAvailableLevel) ...[
              // If passed but no more levels
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Dismiss dialog
                  Navigator.pop(context); // Go back to LevelsPage
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Red for MENU
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('MENU', style: TextStyle(color: Colors.white)),
              ),
            ] else ...[
              // If failed
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Dismiss dialog
                  setState(() {
                    _currentQuestionIndex = 0;
                    _score = 0;
                    // Reset time based on level for retry
                    if (widget.currentLevel >= 1 && widget.currentLevel <= 3) {
                      _secondsRemaining = 100;
                    } else {
                      _secondsRemaining = 60;
                    }
                    _quizEnded = false;
                    _answerSelected = false;
                    _selectedOptionIndex = null;
                    _message = '';
                    _loadQuestionsForLevel(); // Reload questions for retry
                    _startTimer();
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Green for RETRY
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('RETRY', style: TextStyle(color: Colors.white)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Dismiss dialog
                  Navigator.pop(context); // Go back to LevelsPage
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Red for MENU
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('MENU', style: TextStyle(color: Colors.white)),
              ),
            ],
          ],
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
    if (_selectedQuestions.isEmpty && _quizEnded) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          backgroundColor: Color(0xFF3A0070), // Dark purple AppBar
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3A0070),
                Color(0xFF1A0040),
              ], // Dark purple gradient
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _message,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.red.shade300),
              ),
            ),
          ),
        ),
      );
    }

    if (_selectedQuestions.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          backgroundColor: Color(0xFF3A0070), // Dark purple AppBar
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3A0070),
                Color(0xFF1A0040),
              ], // Dark purple gradient
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: CircularProgressIndicator(color: Colors.white70),
          ),
        ),
      );
    }

    final currentQuestion = _selectedQuestions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3A0070), // Dark purple AppBar
        elevation: 0, // No shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Level ${widget.currentLevel}', // Display current level
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              '${_currentQuestionIndex + 1}/${_selectedQuestions.length}', // Question count
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3A0070),
              Color(0xFF1A0040),
            ], // Dark purple gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Timer and Score Display
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                  child: Chip(
                    label: Text(
                      'Time: $_secondsRemaining s',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Colors.purple.shade700.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Spacing below timer
              // Question Card
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ), // More rounded corners
                margin: EdgeInsets.only(bottom: 20),
                color: Color(0xFF6A1B9A), // Dark purple for question card
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Text(
                        currentQuestion.question,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // White text for question
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        currentQuestion.questionEnglish,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors
                              .white70, // Lighter white for English translation
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: currentQuestion.options.length,
                  itemBuilder: (context, index) {
                    bool isCorrect =
                        index == currentQuestion.correctAnswerIndex;
                    bool isSelected = index == _selectedOptionIndex;
                    List<Color> gradientColors =
                        _optionGradients[index % _optionGradients.length];

                    if (_answerSelected) {
                      if (isSelected) {
                        gradientColors = isCorrect
                            ? [
                                Colors.green.shade600,
                                Colors.green.shade800,
                              ] // Darker green for correct selected
                            : [
                                Colors.red.shade600,
                                Colors.red.shade800,
                              ]; // Darker red for incorrect selected
                      } else {
                        // If selected answer is wrong, correct answer should not be highlighted green
                        // Only dim incorrect unselected options
                        gradientColors = [
                          gradientColors[0].withOpacity(0.5),
                          gradientColors[1].withOpacity(0.5),
                        ];
                      }
                    }

                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ), // Rounded corners for buttons
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: gradientColors,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: _quizEnded || _answerSelected
                              ? null
                              : () => _handleAnswer(index),
                          borderRadius: BorderRadius.circular(15),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 20,
                            ),
                            child: Text(
                              currentQuestion.options[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (_message.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _message,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _score >= 7
                          ? Colors.green.shade300
                          : Colors.red.shade300,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
