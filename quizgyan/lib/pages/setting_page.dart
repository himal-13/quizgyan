import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D006B),
      body: Center(
        child: Text(
          'This is the first version of the app.\n'
          'More features will be added in the future.\n'
          'Stay tuned for updates!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5),
        ),
      ),
    );
  }
}
