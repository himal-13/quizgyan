import 'dart:async'; // Import for Timer
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizgyan/components/multiplayer_result.dart';
import 'package:quizgyan/constants/questions.dart';
import 'package:quizgyan/services/audio_services.dart';

class TwoPlayerPlay extends StatefulWidget {
  final String player1Name;
  final String player2Name;
  final int totalQuestions;
  const TwoPlayerPlay({
    super.key,
    required this.player1Name,
    required this.player2Name,
    required this.totalQuestions,
  });

  @override
  State<TwoPlayerPlay> createState() => _TwoPlayerPlayState();
}

class _TwoPlayerPlayState extends State<TwoPlayerPlay> {
  List<Question> selectedQuestions = List.from(nepaliQuizQuestions)..shuffle();

  bool player1Turn = true;
  bool player1ChooseQuestion = true;
  int player1Score = 0;
  int player2Score = 0;
  int currentQuestionIndex = 0;
  bool chooseQuestionMode = true;
  bool firstAttempt = true;
  bool secondAttempt = false;
  bool showResult = false;
  List<int> remainingQuestionIndex = [];

  // Timer variables
  Timer? _timer;
  int _timeRemaining = 0;
  final GlobalKey _timerKey = GlobalKey(); // Key for the timer text widget

  @override
  void initState() {
    selectedQuestions = selectedQuestions.take(widget.totalQuestions).toList();
    remainingQuestionIndex = List.generate(
      selectedQuestions.length,
      (index) => index,
    );
    super.initState();
    // Start timer only if a question is already chosen (not in choose question mode initially)
    if (!chooseQuestionMode) {
      _startTimer();
    }
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer to prevent memory leaks
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel(); // Cancel any existing timer
    _timeRemaining = firstAttempt ? 15 : 8;
    if (!chooseQuestionMode) {
      // Only start timer if actually in question answering mode
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (_timeRemaining > 0) {
          setState(() {
            _timeRemaining--;
          });
        } else {
          _timer?.cancel();
          // Handle timeout:
          setState(() {
            if (firstAttempt) {
              // If first attempt timed out, give second chance to other player
              firstAttempt = false;
              player1Turn = !player1Turn;
              _startTimer(); // Start timer for the other player
            } else {
              // Both players failed or second attempt timed out
              secondAttempt = true;
              firstAttempt = true;
              chooseQuestionMode = true; // Go back to question selection
              player1ChooseQuestion =
                  !player1ChooseQuestion; // Alternate question chooser
              if (remainingQuestionIndex.isEmpty) {
                showResult = true; // Show result if no questions left
                SoundService().playGameOver();
              }
              player1Turn =
                  player1ChooseQuestion; // Turn follows the next question chooser
            }
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5E5),
      body: SafeArea(
        child: showResult
            ? MultiplayerResult(
                player1Score: player1Score,
                player2Score: player2Score,
              )
            : Column(
                children: [
                  RotatedBox(
                    quarterTurns: 2,
                    child: _buildScoreboard(
                      leftSegmentText: "$player1Score",
                      rightSegmentText: widget.player1Name,
                      leftSegmentColor: const Color.fromARGB(255, 40, 85, 167),
                      rightSegmentColor: const Color(0xFF6F42C1),
                      showTimer:
                          player1Turn, // Show timer for player 1 if it's their turn
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(20.0),
                              child: _buildQuestionAndOptionsCard(
                                isMyTurn: player1Turn,
                                myTurntoChoose: player1ChooseQuestion,
                              ),
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: player1Turn ? pi : 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            color: player1Turn
                                ? const Color.fromARGB(255, 40, 85, 167)
                                : const Color(0xFF28A745),
                            margin: const EdgeInsets.symmetric(horizontal: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                player1Turn
                                    ? const Text(
                                        "Player 1's turn",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : const Text(
                                        "Player 2's turn",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                const SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.all(20.0),
                            child: _buildQuestionAndOptionsCard(
                              isMyTurn: player1Turn ? false : true,
                              myTurntoChoose: player1ChooseQuestion
                                  ? false
                                  : true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildScoreboard(
                    leftSegmentText: "$player2Score",
                    rightSegmentText: widget.player2Name,
                    leftSegmentColor: const Color(0xFF6F42C1),
                    rightSegmentColor: const Color(0xFF28A745),
                    showTimer:
                        !player1Turn, // Show timer for player 2 if it's their turn
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildScoreboard({
    required String leftSegmentText,
    required String rightSegmentText,
    required Color leftSegmentColor,
    required Color rightSegmentColor,
    required bool showTimer, // New parameter for showing timer
  }) {
    return SizedBox(
      height: 60,
      child: Stack(
        // Changed to Stack for flexible positioning
        children: [
          Row(
            // Existing Row for score and name segments
            children: [
              Expanded(
                child: Container(
                  color: leftSegmentColor,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        leftSegmentText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: rightSegmentColor,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        rightSegmentText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (showTimer &&
              !chooseQuestionMode) // Only show timer when playing a question
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: _timeRemaining < 6
                    ? const Color.fromARGB(255, 147, 17, 0)
                    : const Color.fromARGB(255, 81, 147, 0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Icon(Icons.timer, color: Colors.white),
                  Text(
                    '$_timeRemaining',
                    key: _timerKey, // Assign the key here
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildQuestionAndOptionsCard({
    required bool isMyTurn,
    required bool myTurntoChoose,
  }) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          chooseQuestionMode
              ? !myTurntoChoose
                    ? const SizedBox()
                    : Container(
                        margin: EdgeInsets.zero,
                        color: const Color(0xFFF8F0E3),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Choose a question',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF333333),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Wrap(
                                spacing: 10.0, // Reduced spacing
                                runSpacing: 10.0, // Reduced spacing
                                alignment: WrapAlignment.center,
                                children: remainingQuestionIndex.map((index) {
                                  return ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        currentQuestionIndex = index;
                                        remainingQuestionIndex.remove(index);
                                        chooseQuestionMode = false;
                                        _startTimer(); // Start timer when question is chosen
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF5C2D7B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          8.0, // Slightly smaller border radius
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal:
                                            15, // Reduced horizontal padding
                                        vertical:
                                            10, // Reduced vertical padding
                                      ),
                                      minimumSize: const Size(
                                        50,
                                        40,
                                      ), // Set a minimum size for the button
                                    ),
                                    child: Text(
                                      (index + 1)
                                          .toString(), // Display 1-based index
                                      style: const TextStyle(
                                        fontSize:
                                            16, // Slightly smaller font size
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      )
              : const SizedBox(),
          chooseQuestionMode
              ? const SizedBox()
              : Column(
                  children: [
                    Text(
                      "Question ${currentQuestionIndex + 1}: ${selectedQuestions[currentQuestionIndex].question}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    const SizedBox(height: 10),
                    secondAttempt
                        ? Row(
                            children: [
                              const Icon(Icons.forward, size: 23),
                              const SizedBox(width: 10),
                              Text(
                                selectedQuestions[currentQuestionIndex].answer,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF555555),
                                ),
                              ),
                            ],
                          )
                        : const SizedBox(height: 10),
                    secondAttempt && myTurntoChoose
                        ? TextButton(
                            onPressed: () {
                              setState(() {
                                chooseQuestionMode = true;
                                firstAttempt = true;
                                secondAttempt = false;
                                _timer
                                    ?.cancel(); // Cancel timer when choosing another question
                              });
                            },
                            child: const Text("choose another question"),
                          )
                        : const SizedBox(),
                    isMyTurn && !secondAttempt
                        ? GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 8.0, // Reduced spacing
                                  crossAxisSpacing: 8.0, // Reduced spacing
                                  childAspectRatio:
                                      3.0, // Adjust aspect ratio for smaller buttons
                                ),
                            itemCount: selectedQuestions[currentQuestionIndex]
                                .options
                                .length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return ElevatedButton(
                                onPressed: () {
                                  _timer?.cancel(); // Cancel timer on answer
                                  bool isCorrect =
                                      selectedQuestions[currentQuestionIndex]
                                          .options[index] ==
                                      selectedQuestions[currentQuestionIndex]
                                          .answer;

                                  if (isCorrect) {
                                    SoundService().playSuccess();
                                    setState(() {
                                      if (firstAttempt) {
                                        // Full points for first try
                                        if (player1Turn) {
                                          player1Score += 5;
                                        } else {
                                          player2Score += 5;
                                        }
                                      } else {
                                        // Partial points for second try
                                        if (player1Turn) {
                                          player1Score += 3;
                                        } else {
                                          player2Score += 3;
                                        }
                                      }

                                      // After correct answer, always go to question selection mode
                                      chooseQuestionMode = true;
                                      if (remainingQuestionIndex.isEmpty) {
                                        showResult =
                                            true; // Show result if no questions left
                                      }

                                      // Alternate question chooser
                                      player1ChooseQuestion =
                                          !player1ChooseQuestion;

                                      // Reset attempt flags
                                      firstAttempt = true;
                                      secondAttempt = false;

                                      // Turn should follow who chooses the question next
                                      player1Turn = player1ChooseQuestion;
                                    });
                                  } else {
                                    SoundService().playFailed();
                                    setState(() {
                                      if (firstAttempt) {
                                        // If first attempt is wrong, give second chance to other player
                                        firstAttempt = false;
                                        player1Turn = !player1Turn;
                                        _startTimer(); // Start timer for the other player
                                      } else {
                                        // Both players failed, move to next question chooser
                                        secondAttempt = true;
                                        firstAttempt = true;

                                        // Alternate question chooser
                                        player1ChooseQuestion =
                                            !player1ChooseQuestion;
                                        if (remainingQuestionIndex.isEmpty) {
                                          showResult =
                                              true; // Show result if no questions left
                                        }
                                        // Turn follows the next question chooser
                                        player1Turn = player1ChooseQuestion;
                                      }
                                    });
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF5C2D7B),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ), // Smaller border radius
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        15, // Reduced horizontal padding
                                    vertical: 10, // Reduced vertical padding
                                  ),
                                ),
                                child: Text(
                                  selectedQuestions[currentQuestionIndex]
                                      .options[index],
                                  textAlign:
                                      TextAlign.center, // Center the text
                                  style: const TextStyle(
                                    fontSize: 16, // Smaller font size
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            },
                          )
                        : const SizedBox(),
                  ],
                ),
        ],
      ),
    );
  }
}
