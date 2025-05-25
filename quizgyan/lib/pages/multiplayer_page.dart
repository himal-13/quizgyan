import 'package:flutter/material.dart';
import 'package:quizgyan/pages/multiplayer_play_page.dart';

List <String> rules = [
  "Each player will take turns answering questions.",
  "Players will have a time limit of 30 seconds to answer each question.",
  "Each correct answer will earn the player 10 points.",
  "Correct answer after previous player and two previous player will earn 6 points and 2 points respectively.",
];

class MultiplayerPage extends StatefulWidget {
  const MultiplayerPage({super.key});

  @override
  State<MultiplayerPage> createState() => _MultiplayerPageState();
}

class _MultiplayerPageState extends State<MultiplayerPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplayer Quiz'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Rules of the Game", style: TextStyle(fontSize: 25)),
            const SizedBox(height: 20),
            ListView.builder(
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Icon(Icons.check),
                  title: Text(rules[index]),
                );
              },
              itemCount: rules.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(), 
              
              ),
            const SizedBox(height: 20),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MultiplayerPlayPage()));
            }, child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("start game", style: TextStyle(fontSize: 20, color: Colors.white),))),
          
                ],
        ),
      ),
    );
  }
}
