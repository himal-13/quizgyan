
import 'package:flutter/material.dart';
import 'package:quizgyan/components/level_button.dart';

class PlayQuizPage extends StatelessWidget {
  const PlayQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SelectLevelPage(),
    );
  }
}

class SelectLevelPage extends StatelessWidget {
  const SelectLevelPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D006B),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back arrow
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                // Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10),
      
            // Title
            const Center(
              child: Text(
                'SELECT LEVEL',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 30),
      
            // Grid of levels
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                scrollDirection: Axis.horizontal,
                // physics: const NeverScrollableScrollPhysics(),
                children: [
                  LevelButton(level: '1', unlocked: true, stars: 0),
                  LevelButton(level: '2', unlocked: true, stars: 0),
                  LevelButton(level: '3', unlocked: true, stars: 0),
                  LevelButton(level: '4', unlocked: true, stars: 0),
                  LevelButton(level: '5', unlocked: true, stars: 0),
                  LevelButton(level: '6', unlocked: true, stars: 0),
                  LevelButton(level: '7', unlocked: true, stars: 0),
                  LevelButton(level: '8', unlocked: true, stars: 0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:quizgyan/components/level_button.dart';
// import 'package:quizgyan/constants/quiz_contant.dart';

// class PlayQuizPage extends StatefulWidget {
//   const PlayQuizPage({super.key});

//   @override
//   State<PlayQuizPage> createState() => _PlayQuizPageState();
// }

// class _PlayQuizPageState extends State<PlayQuizPage> {
//   bool playmode = false;
//   bool optionClicked = false;
//   int? selectedOption;
//   bool scoreAdded = false;

//   int currentLevel = 1;
//   int currentQuestion = 0;
//   int currentScore = 0;


//   void getLevel(int level) {
//     setState(() {
//       playmode = true;
//       currentLevel = level;
//     });
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: !playmode? Container(
//         padding: const EdgeInsets.all(20.0),
//         margin: const EdgeInsets.only(top: 10.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Select Level",
//               style: TextStyle(
//                 fontSize: 30.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 20.0),
          
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 LevelButton(level: '1',onTap: () {
//                   getLevel(1);
//                 },),
//                 LevelButton(level: '2', onTap: (){
//                   getLevel(2);
//                 },),

        
        
//               ],
//             ),
//             const SizedBox(height: 40.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 LevelButton(level: '3', onTap: () {
//                   getLevel(3);
//                 },),
//                 LevelButton(level: '4', onTap: () {
//                   getLevel(4);
//                 },),
  
        
//               ],
//             ),
//             const SizedBox(height: 40.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 LevelButton(level: '5', onTap: () {
//                   getLevel(5);
//                 },),
//                 LevelButton(level: '6', onTap: () {
//                   getLevel(6);
//                 },),
  
        
//               ],
//             ),
//             const SizedBox(height: 40.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 LevelButton(level: '7', onTap: () {
//                   getLevel(7);
//                 },),
//                 LevelButton(level: '8', onTap: () {
//                   getLevel(8);
//                 },),
  
        
//               ],
//             ),
//           ],
        
//         ),
//       ):
//        Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(10.0),
//             decoration: BoxDecoration(
//               color: Colors.blue

//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text("Level $currentLevel",
//                     style: const TextStyle(
//                       fontSize: 30.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     )),
//                     IconButton(onPressed: (){}, icon: Icon(Icons.delete))
//               ],

//             ),
      
//           ),
          
//           //question, options
//           Container(
//             margin: const EdgeInsets.all(10.0),
//             padding: const EdgeInsets.all(20.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.0),
//               color: Colors.white,
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.grey,
//                   blurRadius: 5.0,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: Column(
//               children: [
//                 Text(allLevels[currentLevel - 1].questions[currentQuestion].questionText,
//                     style: const TextStyle(
//                       fontSize: 25.0,
//                       fontWeight: FontWeight.bold,
//                     )),
//                 const SizedBox(height: 20.0),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemCount: allLevels[currentLevel - 1].questions[currentQuestion].options.length,
//                   itemBuilder: (context, index) {
//                     var current = allLevels[currentLevel - 1].questions[currentQuestion];
//                     return ListTile(
//                       title: TextButton(
//                       onPressed: (){
//                         setState(() {
//                           optionClicked= true;
//                           selectedOption = index;
//                           if(current.options[index] == current.answer && !scoreAdded){
//                             currentScore++;
//                             scoreAdded= true;
//                           }
                          
//                         });
//                       },
//                       child: Container(
//                         width: MediaQuery.of(context).size.width,
//                         padding: const EdgeInsets.all(10.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10.0),
//                           color: optionClicked && (selectedOption == index || current.options[index] == current.answer )?( current.options[index] == current.answer? const Color.fromARGB(255, 179, 240, 181) : const Color.fromARGB(255, 238, 156, 150)) : const Color.fromARGB(255, 196, 220, 240),
                          
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(current.options[index],style: TextStyle(color: Colors.black, fontSize: 20),),
//                             optionClicked && (selectedOption == index || current.options[index] == current.answer )? (current.options[index] == current.answer? const Icon(Icons.check, color: Colors.green,) : const Icon(Icons.close, color: Colors.red,)) : const Icon(Icons.check, color: Colors.transparent,),

//                           ],
//                         )),
//                     ),
                      
//                     );
//                   },
//                 ),
     
//               ],
//             ),
//           ),
            
//             //next button
//             const SizedBox(height: 20.0),
//            optionClicked ?  TextButton(
//               onPressed: (){
//                 setState(() {
//                   if(currentQuestion < allLevels[currentLevel - 1].questions.length - 1){
//                     currentQuestion++;
//                     optionClicked = false;
//                     selectedOption = null;
//                   }else{
//                     //show score
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: const Text("Quiz Completed"),
//                           content: Column(
//                             children: [
//                               Text("Score : $currentScore", textAlign: TextAlign.center, ),
//                               const SizedBox(height: 10.0),
//                             ],
//                           ),
//                           actions: [
//                             TextButton(
//                               onPressed: () {
//                                 setState(() {
//                                   currentLevel = 1;
//                                   currentQuestion = 0;
//                                   currentScore = 0;
//                                   playmode = false;
//                                   optionClicked = false;
//                                   selectedOption = null;
//                                   scoreAdded = false;
//                                 });
//                                 Navigator.of(context).pop();
//                               },
//                               child: const Text("OK"),
//                             ),
//                           ],

                         
//                         );
//                       },
//                     );
//                   }
//                 });
//               },
//               child: Container(
//               padding: const EdgeInsets.all(10.0),
//               width: 60,
//               height: 60,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30.0),
//                 color: Colors.blue,
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 5.0,
//                     offset: Offset(0, 2),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.arrow_forward, color: Colors.white, size: 30.0,),
//                 ],
//               ),
//             )):SizedBox()
          
//         ],
//       ),

      
//     );
//   }
// }
