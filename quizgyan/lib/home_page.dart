import 'package:flutter/material.dart';
import 'package:quizgyan/pages/about_page.dart';
import 'package:quizgyan/pages/level_page.dart';
import 'package:quizgyan/pages/multiplayer_page.dart';
import 'package:quizgyan/pages/play_quiz_page.dart';
import 'package:quizgyan/pages/round_page.dart';
import 'package:quizgyan/pages/setting_page.dart';
import 'package:store_redirect/store_redirect.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF3F005F),
          // Keeping the base color similar to the original, but the image background is more dotted/textured.
          // For simplicity, a solid color is used here. For the exact dotted pattern,
          // you'd need to use an image asset or custom painter.
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 12.0,
            ),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align to top as in the image
              children: <Widget>[
                // --- Start of original logo and app name section ---
                const Icon(
                  Icons.lightbulb_outline,
                  color: Colors.yellow,
                  size: 70.0,
                ),
                const SizedBox(height: 10.0), // Spacing between icon and text

                const Text(
                  'QUIZ',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30.0,
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

                // --- End of original logo and app name section ---
                const SizedBox(
                  height: 50.0,
                ), // Spacing below the app name section
                // Grid of 4 main action buttons (Quickplay, Rounds, Levels, Multiplayer)
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    scrollDirection:
                        Axis.vertical, // To prevent scrolling inside the column
                    children: <Widget>[
                      _buildActionButton(
                        context,
                        icon: Icons.timer, // Timer icon for Quickplay
                        label: 'QUICKPLAY',
                        color: const Color(0xFFE54F3F), // Red/orange color
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  QuickPlayQuizPage(), // Mapped to PlayQuizPage
                            ),
                          );
                        },
                      ),
                      _buildActionButton(
                        context,
                        icon: Icons
                            .looks_two, // Placeholder for '10 Rounds' - a number icon, or a custom one if available
                        label: '10 ROUNDS',
                        color: const Color(0xFF3FCF96), // Green color
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  RoundsPage(), // Mapped to PlayQuizPage
                            ),
                          );
                        },
                      ),
                      _buildActionButton(
                        context,
                        icon: Icons.bar_chart, // Or similar for Levels/Progress
                        label: 'LEVELS',
                        color: const Color(
                          0xFFFFCC33,
                        ), // Yellow color (same as QUIZ banner)
                        onPressed: () {
                          // Define action for Levels
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LevelPage(),
                            ),
                          );
                        },
                      ),
                      _buildActionButton(
                        context,
                        icon: Icons.people, // People icon for Multiplayer
                        label: 'MULTIPLAYER',
                        color: const Color(0xFF5F258B), // Purple color
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MultiplayerPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0), // Spacing before the bottom row
                // Bottom row of buttons (Settings, Rate Us, More Apps)
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround, // Distribute evenly
                  children: <Widget>[
                    _buildBottomIconTextButton(
                      context,
                      icon: Icons.settings,
                      label: 'SETTINGS',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingPage(),
                          ),
                        );
                      },
                    ),
                    _buildBottomIconTextButton(
                      context,
                      icon: Icons.star,
                      label: 'RATE US',
                      onPressed: () {
                        StoreRedirect.redirect(
                          androidAppId: "com.himal13.quizgyan",
                          // iOSAppId: "6482293361",
                        );
                      },
                    ),
                    _buildBottomIconTextButton(
                      context,
                      icon: Icons.apps, // More Apps icon
                      label: 'MORE APPS',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AboutPage(), // Mapped to AboutPage as a placeholder
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget to build the larger action buttons (Quickplay, Rounds, etc.)
  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(32, 0, 0, 0),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 50.0, // Icon size
            ),
            const SizedBox(height: 10.0),
            Text(
              label,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18.0, // Font size for labels
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper widget to build the bottom icon-text buttons (Settings, Rate Us, More Apps)
  Widget _buildBottomIconTextButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            icon,
            color: Colors.white, // Icon color
            size: 40.0, // Icon size
          ),
          onPressed: onPressed,
        ),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16.0, // Font size for labels
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
