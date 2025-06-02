import 'package:flutter/material.dart';
import 'package:quizgyan/components/level_complete_dialog.dart';
import 'package:quizgyan/constants/quiz_contant.dart';



class LevelPage extends StatefulWidget {
  final int level;
  const LevelPage({super.key, required this.level});

  @override
  State<LevelPage> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {

    int currentQuestionIndex = 0; 
    int score = 0;
    bool optionClicked = false;
    int? selectedOptionIndex;
    bool showResult = false;



  Widget buildOption(String text, Color color) {
    int currentIndex = allLevels[widget.level - 1].questions[currentQuestionIndex].options.indexOf(text);

    return TextButton(
      onPressed: () {
        if (!optionClicked) {
          setState(() {
            optionClicked = true;
            selectedOptionIndex = currentIndex;
            selectedOptionIndex = allLevels[widget.level - 1].questions[currentQuestionIndex].options.indexOf(text);
            if (allLevels[widget.level - 1].questions[currentQuestionIndex].answer == text) {
              score++;
            }
          });
        }
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child:  Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
          
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D006B),
      body: showResult? LevelCompleteDialog(points: score*10) : Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            // Top row: back button + question count
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 107, 2, 206),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Level ${widget.level}",
                    style: const TextStyle(
                      fontFamily: 'serif',
                      color: Color.fromARGB(255, 241, 164, 164),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${currentQuestionIndex+1} / 10',
                    style: TextStyle(color: const Color.fromARGB(255, 241, 164, 164), fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.5, fontFamily: 'serif'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Question box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child:  Text(
                allLevels[widget.level - 1].questions[currentQuestionIndex].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Options
            ListView.builder(
              itemCount: allLevels[widget.level - 1].questions[currentQuestionIndex].options.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final current = allLevels[widget.level - 1].questions[currentQuestionIndex];
                final option = allLevels[widget.level - 1].questions[currentQuestionIndex].options;
                return ListTile( title: buildOption(option[index],optionClicked && selectedOptionIndex == index ? (current.answer == option[index] ? const Color.fromARGB(255, 60, 230, 66) : const Color.fromARGB(255, 155, 20, 11) ): const Color.fromARGB(255, 33, 125, 245)));
              }
              
            ),
            optionClicked ?  TextButton(
              onPressed: (){
                  if (currentQuestionIndex >= 9) {
                    setState(() {
                    showResult = true;

                    // Show the result dialog
                    });
                    return;

                  }
                    setState(() {
                  currentQuestionIndex++;
                  optionClicked = false;
                  selectedOptionIndex = null;
                      
                    });


                  
     
                
              },
              child: Container(
              padding: const EdgeInsets.all(10.0),
              
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: const Color(0xFF6900D1),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(239, 0, 0, 0),
                    blurRadius: 5.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.arrow_forward, color: Colors.white, size: 32.0,),
                ],
              ),
            )):SizedBox()
          
          ],
        ),
      ),
    );
  }
}
