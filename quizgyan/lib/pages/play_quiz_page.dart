import 'package:flutter/material.dart';
import 'package:quizgyan/components/level_button.dart';
import 'package:quizgyan/constants/quiz_contant.dart';

class PlayQuizPage extends StatefulWidget {
  const PlayQuizPage({super.key});

  @override
  State<PlayQuizPage> createState() => _PlayQuizPageState();
}

class _PlayQuizPageState extends State<PlayQuizPage> {
  bool playmode = false;

  int currentLevel = 1;
  int currentQuestion = 0;
  int currentScore = 0;


  void getLevel(int level) {
    setState(() {
      playmode = true;
      currentLevel = level;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Column(
      //     children: [
          
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           LevelButton(level: '1'),
      //           LevelButton(level: '2'),
      //           LevelButton(level: '3'),
        
        
      //         ],
      //       ),
      //       const SizedBox(height: 20.0),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           LevelButton(level: '1'),
      //           LevelButton(level: '2'),
      //           LevelButton(level: '3'),
        
      //         ],
      //       )
      //     ],
        
      //   ),
      // ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.blue

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Level $currentLevel",
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete))
              ],

            ),
      
          ),
          
          //question, options
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(allLevels[currentLevel - 1].questions[currentQuestion].questionText,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 20.0),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: allLevels[currentLevel - 1].questions[currentQuestion].options.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: TextButton(
                      onPressed: (){},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromARGB(255, 218, 235, 248)
                          
                        ),
                        child: Text(allLevels[currentLevel - 1].questions[currentQuestion].options[index],textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 20),)),
                    ),
                      
                    );
                  },
                ),
     
              ],
            ),
          ),
            
          
        ],
      ),
      
    );
  }
}
