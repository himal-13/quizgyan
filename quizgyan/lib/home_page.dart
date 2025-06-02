import 'package:flutter/material.dart';
import 'package:quizgyan/pages/about_page.dart';
import 'package:quizgyan/pages/multiplayer_page.dart';
import 'package:quizgyan/pages/play_quiz_page.dart';
import 'package:quizgyan/pages/setting_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: const BoxDecoration(
          color: Color(0xFF3F005F), 
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF3F005F), 
              Color(0xFF2D006B), 
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                const Icon(
                  Icons.lightbulb_outline,
                  color: Colors.yellow,
                  size: 80.0,
                ),
                const SizedBox(height: 20.0),

                
                const Text(
                  'QUIZ',
                  style: TextStyle(
                    fontFamily: 'Montserrat', 
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                const Text(
                  'ज्ञान',
                  style: TextStyle(
                    fontFamily: 'Montserrat', 
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    letterSpacing: 2.0,
                    
                  ),
                ),
                const SizedBox(height: 50.0),

                
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => const PlayQuizPage(),
                        ),
                      );
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00C896), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                    ),
                    child: const Text(
                      'SINGLE PLAYER',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),

                
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => const MultiplayerPage(),
                        ),
                      );
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF9800), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                    ),
                    child: const Text(
                      'MULTIPLAYER',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),

                
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => const SettingPage(),
                        ),
                      );
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5F258B), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                    ),
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    label: const Text(
                      'SETTINGS',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),

                
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5F258B), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                    ),
                    icon: const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    label: const Text(
                      'RATE US',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),

                
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => const AboutPage(),
                        ),
                      );
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5F258B), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                    ),
                    icon: const Icon(
                      Icons.info,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    label: const Text(
                      'INFO',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
