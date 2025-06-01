import 'package:flutter/material.dart';



class MultiplayerPlayPage extends StatelessWidget {
  const MultiplayerPlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const QuizScreen()
      );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool player1Turn = true; 
  int player1Score = 0;
  int player2Score = 0;
  int currentQuestionIndex = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5E5), // Light beige background
      body: SafeArea(
        child: Column(
          children: [
            // Top Scoreboard (Player 1) - Rotated to be opposite
            RotatedBox(
              quarterTurns: 2, // Rotates the content by 180 degrees
              child: _buildScoreboard( 
                leftSegmentText: 'PLAYER 1',
                rightSegmentText: '0',
                leftSegmentColor: const Color.fromARGB(255, 40, 85, 167), // Green for Player 1
                rightSegmentColor: const Color(0xFF6F42C1), // Purple for Player 1's score
              ),
            ),
            // Middle section containing Player 1's question, a divider, and Player 2's question
            Expanded(
              child: Column(
                children: [
                  // Player 1's Question and Options (rotated)
                  Expanded(
                    child: RotatedBox(
                      quarterTurns: 2, // Rotates the content by 180 degrees
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(20.0),
                        child: _buildQuestionAndOptionsCard(),
                      ),
                    ),
                  ),
                  // Central Divider
                  Container(
                    color:player1Turn?const Color.fromARGB(255, 40, 85, 167): const Color(0xFF28A745),
                    margin: const EdgeInsets.symmetric(horizontal: 0), 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        player1Turn ? const Text("Player 1's turn", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),) : const Text("Player 2's turn", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        const SizedBox(width: 20,),
                        TextButton(onPressed: (){

                        }
                        , child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 184, 156, 233), 
                                ),
                              child: Row(
                                children: [
                                  
                                  Text("choose a Question", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                                ],
                              )),
                          ],
                        )),
                      ],
                    ),// No horizontal margin
                  ),
                  // Player 2's Question and Options (normal orientation)
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(20.0),
                      child: _buildQuestionAndOptionsCard(),
                    ),
                  ),
                ],
              ),
            ),
            // Bottom Scoreboard (Player 2)
            _buildScoreboard(
              leftSegmentText: '0',
              rightSegmentText: 'PLAYER 2',
              leftSegmentColor: const Color(0xFF6F42C1), // Purple for Player 2's score
              rightSegmentColor: const Color(0xFF28A745), // Green for Player 2
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build the scoreboard segments
  Widget _buildScoreboard({
    required String leftSegmentText,
    required String rightSegmentText,
    required Color leftSegmentColor,
    required Color rightSegmentColor,
  }) {
    return SizedBox(
      height: 60, // Fixed height for scoreboard
      child: Row(
        children: [
          // Left segment
          Expanded(
            child: Container(
              color: leftSegmentColor, // Background color for the left segment
              alignment: Alignment.center, // Center the text within this segment
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown, // Shrink text if it's too long
                  child: Text(
                    leftSegmentText,
                    style: const TextStyle(
                      color: Colors.white, // White text color
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Right segment
          Expanded(
            child: Container(
              color: rightSegmentColor, // Background color for the right segment
              alignment: Alignment.center, // Center the text within this segment
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown, // Shrink text if it's too long
                  child: Text(
                    rightSegmentText,
                    style: const TextStyle(
                      color: Colors.white, // White text color
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
    );
  }

  // Helper method to build the question and options card
  Widget _buildQuestionAndOptionsCard() {
    return Card(
      margin: EdgeInsets.zero, // Remove default card margin
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Rounded corners for the card
      ),
      color: const Color(0xFFF8F0E3), // Light cream background for card
      elevation: 5, // Shadow effect for the card
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start
          children: [
            const Text(
              'What is the capital of France?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF333333), // Dark grey text color
              ),
            ),
            const SizedBox(height: 20), // Spacing below the question
            // Answer options displayed in a grid
            GridView.count(
              shrinkWrap: true, // Allows GridView to take only necessary space
              physics: const NeverScrollableScrollPhysics(), // Disables GridView's own scrolling
              crossAxisCount: 2, // Two columns for options
              mainAxisSpacing: 15, // Vertical spacing between grid items
              crossAxisSpacing: 15, // Horizontal spacing between grid items
              childAspectRatio: 2.5, // Adjust option button aspect ratio
              children: [
                _buildOptionButton('Berlin'),
                _buildOptionButton('Madrid'),
                _buildOptionButton('Paris'),
                _buildOptionButton('Rome'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build individual option buttons
  Widget _buildOptionButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Implement logic for when an option button is pressed
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF0E5D4), // Slightly darker cream background
        foregroundColor: const Color(0xFF333333), // Dark grey text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners for buttons
        ),
        elevation: 3, // Shadow effect for buttons
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown, // Shrink text if it's too long
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
