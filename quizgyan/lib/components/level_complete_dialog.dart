import 'package:flutter/material.dart';

class LevelCompleteDialog extends StatelessWidget {
  final int points;
  final String title;
  final String buttonText;

  const LevelCompleteDialog({
    super.key,
    required this.points,
    this.title = 'CONGRATULATIONS!',
    this.buttonText = 'CONTINUE',
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 104, 18, 223),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.check_circle,
              size: 80,
              color: Colors.white,
            ),
            
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'You have scored',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "$points%",
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: const Size(200, 50),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper function to show the dialog
void showCongratulationsDialog({
  required BuildContext context,
  required int points,
  String title = 'CONGRATULATIONS!',
  String buttonText = 'CONTINUE',
  VoidCallback? onContinue,
}) {
  showDialog(
    context: context,
    builder: (context) => LevelCompleteDialog(
      points: points,
      title: title,
      buttonText: buttonText,
    ),
  );
}
