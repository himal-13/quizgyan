import 'package:flutter/material.dart';
import 'package:quizgyan/constants/science_questions.dart';

class LevelPage extends StatefulWidget {
  const LevelPage({super.key});

  @override
  State<LevelPage> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  int currentQuestionIndex = 0;
  int completedscienceQuestionsIndex = 0;
  int? selectedOptionIndex;
  bool? isAnswerCorrect;
  bool optionClicked = false;
  int level = 1; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4B0082), // Deep purple background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top row with Level and Timer
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    //should have to change this to the level name
                    "Level $level",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "${completedscienceQuestionsIndex + 1} / ${scienceQuestions.length}",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Row(
                    children: [
                        Icon(Icons.shield, color: Colors.green, size: 22),
                        Icon(Icons.shield, color: Colors.green, size: 22),
                        Icon(Icons.shield, color: Colors.green, size: 22),

                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Progress Bar
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value:completedscienceQuestionsIndex/scienceQuestions.length, // 60%
                  minHeight: 10,
                  backgroundColor: Colors.black38,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                ),
              ),
              SizedBox(height: 30),

              SizedBox(height: 10),
              Center(
                child: Text(
                  scienceQuestions[currentQuestionIndex].questionText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),

              // Options
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: scienceQuestions[currentQuestionIndex].options.length,
                itemBuilder: (context, index) {
                  final option = scienceQuestions[currentQuestionIndex].options[index];
                  return OptionButton(
                    bgColor: selectedOptionIndex == index
                        ? (index == scienceQuestions[currentQuestionIndex].answerIndex?Colors.green:Colors.red) // Change color when selected
                        : Color(0xFF6A5ACD), // Slate blue color
                    text: option,
                    isSelected: false, // You can implement selection logic
                    onPressed: () {
                if (optionClicked && completedscienceQuestionsIndex >= scienceQuestions.length) return;

                      setState(() {
                        selectedOptionIndex = index;
                        optionClicked = true; 
                      });

                      Future.delayed(Duration(milliseconds: 250), () {
                        setState(() {
                          completedscienceQuestionsIndex++;
                          currentQuestionIndex++;
                          optionClicked = false;
                          selectedOptionIndex = null; 
                        if((currentQuestionIndex+1)%5 ==0){
                          level++;
                      }
                        });
             
                      });

            
                    },
                  );

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function()? onPressed;
  final Color bgColor;// Slate blue color

  const OptionButton({super.key, 
    required this.text,
    this.isSelected = false,
    this.onPressed,
    this.bgColor = const Color(0xFF6A5ACD),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              bgColor,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {
          onPressed?.call();

        },
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
