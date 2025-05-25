import 'package:flutter/material.dart';
import 'package:quizgyan/constants/quiz_contant.dart';



List<Map<String, dynamic>>  selectedQuestions = List.from(questions)..shuffle();


class MultiplayerPlayPage extends StatefulWidget {
  const MultiplayerPlayPage({super.key});

  @override
  State<MultiplayerPlayPage> createState() => _MultiplayerPlayPageState();
}

class _MultiplayerPlayPageState extends State<MultiplayerPlayPage> {

  List<int> selectedQuestionsIndex = [];
  int currentQuestionIndex = 0;
  int player1Score = 0;
  int player2Score = 0;
  bool isPlayer1Turn = true;
  int? numQuestionsSelected;

  @override
  void initState() {
   selectedQuestions = selectedQuestions.take(20).toList();
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text(isPlayer1Turn ? "Player 1" : "Player 2"),
        backgroundColor: isPlayer1Turn ? Colors.blue : Colors.green,
      ),
      body: SingleChildScrollView(
        child: selectedQuestionsIndex.length== 20?Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Game Over", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text("Player 1 Score: $player1Score", style: TextStyle(fontSize: 20, color: Colors.blue)),
              Text("Player 2 Score: $player2Score", style: TextStyle(fontSize: 20, color: Colors.green)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back to Home"),
              ),
            ],
          ),
        ): Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              //select question number
              const Text(
                "Select question",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                itemCount:(selectedQuestions.length/4).ceil(),
                itemBuilder: (_, index) {
                  int startIndex = index * 4;
                  List<Map<String, dynamic>> questionSet = selectedQuestions.skip(startIndex).take(4).toList();
                  return Row(
                    children: questionSet.asMap().entries.map((entry,) {
                          int innerIndex = entry.key; // 0, 1, 2
        
                          int actualIndex = index * 4 + innerIndex;
                      return Expanded(
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: (){
                                if (!selectedQuestionsIndex.contains(actualIndex)) {
                                showDialog(
                                 context: context,
                                 barrierDismissible: false,
                                 builder: (context){
                                  return WillPopScope(
                                    onWillPop: () async {
                                      // Prevent back navigation during question dialog
                                      return false;
                                    },                                      
                                    child: AlertDialog(
                                    title: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: isPlayer1Turn ? Colors.blue : Colors.green,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text("${isPlayer1Turn ? "Player 1" : "Player 2"}'s turn")),
                                    content: SizedBox(
                                      width: double.maxFinite, // Allows ListView to expand inside AlertDialog
                                      child: Column(
                                        children: [
                                          Text(selectedQuestions[actualIndex]['question']),
                                          const SizedBox(height: 10),
                                          // Display options as buttons
                                          Expanded(
                                            child: ListView.builder(
                                              itemCount: selectedQuestions[actualIndex]['options'].length,
                                              itemBuilder: (_, index) {
                                                return Container(
                                                  margin: EdgeInsets.symmetric(vertical: 8),
                                                  padding: EdgeInsets.all(12),
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius: BorderRadius.circular(8),
                                                  ),
                                                  child: TextButton(
                                                    onPressed: (){
                                                      var selectedOption = selectedQuestions[actualIndex]['options'][index];
                                                      setState(() {
                                                        selectedQuestionsIndex.add(actualIndex);
                                                        if (isPlayer1Turn) {
                                                          player1Score += selectedQuestions[actualIndex]['options'][index] == selectedQuestions[actualIndex]['answer'] ? 1 : 0;
                                                        } else {
                                                          player2Score += selectedQuestions[actualIndex]['options'][index] == selectedQuestions[actualIndex]['answer'] ? 1 : 0;
                                                        }

                                                         
                                                      });

                                                      setState(() {
                                                        if(selectedOption == selectedQuestions[actualIndex]['answer']){
                                                          if (isPlayer1Turn) {
                                                            player1Score++;
                                                          } else {
                                                            player2Score++;
                                                          }
                                                        }
                                                        isPlayer1Turn = !isPlayer1Turn; // Switch turn

                                                      });
                                                      Navigator.of(context).pop(); // Close the dialog
                                                    },
                                                    child: Text(
                                                      selectedQuestions[actualIndex]['options'][index],
                                                      style: TextStyle(fontSize: 16),
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

                                });
                                }
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.blue[200],
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Text((actualIndex+1).toString(), textAlign: TextAlign.center,))
                              ),
                                
                          ],
                        ),
                      );
                    }).toList(),
                  );
                },
                shrinkWrap: true,
        
              ),
              const SizedBox(height: 10,),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              const Text('Score', textAlign: TextAlign.start,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      minHeight:MediaQuery.sizeOf(context).height/4, 
                    ),
                    margin: const EdgeInsets.only(right: 5),
                    width: MediaQuery.of(context).size.width/3,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all( width: .5, color: Colors.black)
                      
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue
                          ),
                          child: Text("Player 1")),
                          Text("Score: $player1Score"),
        
                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minHeight:MediaQuery.sizeOf(context).height/4, 
                    ),
                    width: MediaQuery.of(context).size.width/3,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all( width: .5, color: Colors.black)
                      
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green
                          ),
                          child: Text("Player 2")),
                          Text("Score: $player2Score"),
        
                      ],
                    ),
                  )
                ],
              )
        
        
        
        
          ],),
        ),
      ),
    );
  }
}
