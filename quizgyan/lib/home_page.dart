import 'package:flutter/material.dart';
import 'package:quizgyan/components/did_you_know.dart';
import 'package:quizgyan/components/quiz_section.dart';
import 'package:quizgyan/pages/about_page.dart';
import 'package:quizgyan/pages/setting_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Gyan'),
      ),
      body:Column(
        children: [
          DidYouKnow(),
          QuizSection()
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Quiz Gyan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                // Handle the tap
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the tap
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const SettingPage(),
                ));
              },
            ),
          ],
        ),
      ),
    );
    
  }
}
