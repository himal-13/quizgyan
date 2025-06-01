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
  int player1Score = 0;
  int player2Score = 0;
  int currentQuestionIndex = 0; 
  bool chooseQuestionMode = true; 
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
                leftSegmentText: 'PLAYER 1',
                rightSegmentText: '0',
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
                          isMyTurn: true,
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
                        isMyTurn: false
                      ),
                    ),
                  ),
                ],
              ),
            ),
             
            _buildScoreboard(
              leftSegmentText: '0',
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

  }) {
    return  Container(
      child: Column(
        children: [

      
    chooseQuestionMode ? 
    !isMyTurn ?const SizedBox():
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
        const SizedBox(height: 20),  
        isMyTurn? GridView.builder(
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
