import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizgyan/constants/quiz_contant.dart';


List<Map<String, dynamic>>  selectedQuestions = List.from(questions)..shuffle();


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
  bool player1ChooseQuestion = true;
  int player1Score = 0;
  int player2Score = 0;
  int currentQuestionIndex = 0; 
  bool chooseQuestionMode = true; 
  bool firstAttempt = true;
  bool secondAttempt = false;
  List <int> remainingQuestionIndex = List.generate(20, (index) => index);  


  @override
  void initState() {
   selectedQuestions = selectedQuestions.take(20).toList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5E5),  
      body: SafeArea(
        child: Column(
          children: [
             
            RotatedBox(
              quarterTurns: 2,  
              child: _buildScoreboard( 
                leftSegmentText: "$player1Score",
                rightSegmentText: 'Player 1',
                leftSegmentColor: const Color.fromARGB(255, 40, 85, 167),  
                rightSegmentColor: const Color(0xFF6F42C1),  
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
                    angle: player1Turn ? pi :0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color:player1Turn?const Color.fromARGB(255, 40, 85, 167): const Color(0xFF28A745),
                      margin: const EdgeInsets.symmetric(horizontal: 0), 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          player1Turn ? const Text("Player 1's turn", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),) : const Text("Player 2's turn", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 20,),
                        
                   
                        ],
                      ), 
                    ),
                  ),
                   
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(20.0),
                      child: _buildQuestionAndOptionsCard(
                        isMyTurn: player1Turn ? false : true,
                        myTurntoChoose: player1ChooseQuestion? false :true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             
            _buildScoreboard(
              leftSegmentText: "$player2Score",
              rightSegmentText: 'PLAYER 2',
              leftSegmentColor: const Color(0xFF6F42C1),  
              rightSegmentColor: const Color(0xFF28A745),  
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
  }) {
    return SizedBox(
      height: 60,  
      child: Row(
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
    );
  }

   
  Widget _buildQuestionAndOptionsCard({
    required bool isMyTurn,
    required bool myTurntoChoose,

  }) {
    return  Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [

      
    chooseQuestionMode ? 
    !myTurntoChoose ?const SizedBox():
    Container(
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
                  spacing: 15.0,  
                  runSpacing: 15.0,  
                  alignment: WrapAlignment.center,  
                  children: remainingQuestionIndex.map((index) {
                    return ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentQuestionIndex = index;
                          remainingQuestionIndex.remove(index);
                          chooseQuestionMode = false;
                          
                        });
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5C2D7B),  
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      ),
                      child: Text(
                        index.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,  
                        ),
                      ),
                    );
                  }).toList()
                ),
          ],
        ),
      ),
    ) 
    :
    const SizedBox(),
    chooseQuestionMode ? const SizedBox() :
    Column(
      children: [
        Text("Question ${currentQuestionIndex + 1}: ${selectedQuestions[currentQuestionIndex]['question']}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF333333),  
          ),
        ),
        const SizedBox(height: 10),
       secondAttempt ?Row(
          children: [
            Icon(Icons.forward, size: 23,),
            const SizedBox(width: 10),
          Text("${selectedQuestions[currentQuestionIndex]['answer']}",
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF555555),  
            ),
          ),
          ],
        ): const SizedBox(height: 10,),
         secondAttempt && myTurntoChoose ? 
        TextButton(onPressed: () {
          setState(() {
            chooseQuestionMode = true; 
            firstAttempt = true;
            secondAttempt = false;

          });

            }, child: Text("choose another question",)): const SizedBox(),
        isMyTurn && !secondAttempt? GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,  
            mainAxisSpacing: 10.0,  
            crossAxisSpacing: 10.0,  
          ),
          itemCount: selectedQuestions[currentQuestionIndex]['options'].length,
          shrinkWrap: true,  
          physics: const NeverScrollableScrollPhysics(),  
          itemBuilder: (context, index) {
            return ElevatedButton(
              onPressed: () {
            
                //player should get 5 points for first attempt and 3 points for second attempt
    bool isCorrect = selectedQuestions[currentQuestionIndex]['options'][index] ==
                   selectedQuestions[currentQuestionIndex]['answer'];

  if (isCorrect) {
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

      // Alternate question chooser
      player1ChooseQuestion = !player1ChooseQuestion;

      // Reset attempt flags
      firstAttempt = true;
      secondAttempt = false;

      // Turn should follow who chooses the question next
      player1Turn = player1ChooseQuestion;
    });
  } else {
    setState(() {
      if (firstAttempt) {
        // If first attempt is wrong, give second chance to other player
        firstAttempt = false;
        player1Turn = !player1Turn;
      } else {
        // Both players failed, move to next question chooser
        secondAttempt = true;
        firstAttempt = true;

        // Alternate question chooser
        player1ChooseQuestion = !player1ChooseQuestion;

        // Turn follows the next question chooser
        player1Turn = player1ChooseQuestion;
      }
    });
  }

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5C2D7B),  
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: Text(
                selectedQuestions[currentQuestionIndex]['options'][index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,  
                ),
              ),
            );
          },
        ):
        const SizedBox(),
      ],
    )
      ],

      ),

    ) ;
  }

}
