import 'package:flutter/material.dart';
import 'package:quizgyan/pages/level_page.dart';




class PlayQuizPage extends StatefulWidget {
  const PlayQuizPage({super.key});

  @override
  State<PlayQuizPage> createState() => _PlayQuizPageState();
}

class _PlayQuizPageState extends State<PlayQuizPage> {
   
   List<QuizCategory> categories = [
    QuizCategory('TECHNOLOGY', Icons.computer, Colors.orange[700]!),
    QuizCategory('SCIENCE', Icons.science, Colors.cyan[700]!),
    QuizCategory('CULTURE', Icons.theater_comedy, Colors.pink[700]!),
    QuizCategory('GEOGRAPHY', Icons.public, Colors.green[700]!),
    QuizCategory('IQ', Icons.psychology, Colors.blue[700]!),
    QuizCategory('HISTORY', Icons.menu_book, Colors.amber[700]!),
    QuizCategory('MOVIES', Icons.movie, Colors.redAccent[700]!),
    QuizCategory('SPORTS', Icons.sports_soccer, Colors.deepOrange[700]!),
    QuizCategory('MATHS', Icons.calculate, Colors.purple[700]!),
    QuizCategory('LITERATURE', Icons.book, Colors.teal[700]!),
    QuizCategory('ART', Icons.brush, Colors.deepPurple[700]!),
    QuizCategory('MUSIC', Icons.music_note, Colors.indigo[700]!),
    QuizCategory('FOOD', Icons.fastfood, Colors.brown[700]!),
    QuizCategory('ANIMALS', Icons.pets, Colors.lightGreen[700]!),
    QuizCategory('SPACE', Icons.space_bar, Colors.blueGrey[700]!),
    QuizCategory('HEALTH', Icons.health_and_safety, Colors.lime[700]!),
    QuizCategory('FASHION', Icons.checkroom, Colors.pinkAccent[700]!),
    QuizCategory('TRAVEL', Icons.airplanemode_active, Colors.lightBlue[700]!),
    QuizCategory('BUSINESS', Icons.business, Colors.deepOrangeAccent[700]!),
    QuizCategory('POLITICS', Icons.gavel, Colors.grey[700]!),
    QuizCategory('RELIGION', Icons.church, Colors.amberAccent[700]!),
    QuizCategory('LANGUAGES', Icons.translate, Colors.cyanAccent[700]!),
    QuizCategory('PHILOSOPHY', Icons.lightbulb, Colors.yellow[700]!),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play QUIZ', style: TextStyle(fontSize: 24, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.deepPurple[900],
      
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 20),
            //   child: Center(
            //     child: Text(
                  
            //       style: TextStyle(
            //         fontSize: 30,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.white,
            //         letterSpacing: 2,
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(12),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: categories
                    .map((category) => CategoryCard(category: category))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizCategory {
  final String title;
  final IconData icon;
  final Color color;

  QuizCategory(this.title, this.icon, this.color);
}

class CategoryCard extends StatelessWidget {
  final QuizCategory category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Navigate to the quiz page for the selected category
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LevelPage(), // Replace with actual quiz page
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              category.icon,
              size: 50,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              category.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              'Level 1',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
