
import 'package:flutter/material.dart';


class MultiplayerResult extends StatelessWidget {
  final int player1Score;
  final int player2Score;
  const MultiplayerResult({super.key, required this.player1Score, required this.player2Score});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2D006B),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Star Icon above the Winner label
          Icon(Icons.star, size: 50, color: Color(0xFFFFC107)),
          const SizedBox(height: 10),
          
          // Winner Text
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            decoration: BoxDecoration(
              color: Color(0xFFFFA726),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              player1Score == player2Score ? 'DRAW!' : 'WINNER!',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          
          const SizedBox(height: 30),
          player1Score == player2Score?
          Column(
            children: [
          buildPlayerBox(
            score: player1Score,
            scale: 1,
            label: 'Player 1',
            color: Color(0xFF1976D2), // Grey
          )],
          )

          :player1Score > player2Score?
            buildPlayerBox(
            score: player1Score,
            scale: 1.3,
            label: 'PLAYER 1',
            color: Color(0xFF1976D2), // Blue
          ):
          buildPlayerBox(
            score: player2Score,
            scale: 1.3,
            label: 'PLAYER 2',
            color: Color(0xFF1976D2), // Red
          ),
          
          const SizedBox(height: 20),

          player1Score < player2Score?
          buildPlayerBox(
            score: player1Score,
            scale: 1,
            label: 'PLAYER 1',
            color: Color(0xFFD32F2F), // Red
          ):
          buildPlayerBox(
            score: player2Score,
            scale: 1,
            label: 'PLAYER 2',
            color: Color(0xFFD32F2F), // Blue
          ),

 
          
          const SizedBox(height: 40),
          
          // Main Menu Button
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              decoration: BoxDecoration(
                color: Color(0xFFFFA726),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'MAIN MENU',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPlayerBox({
    required String label,
    required Color color,
    required double scale ,
    required int score,
  }) {
    return Transform.scale(
      scale: scale,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 60),
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 4),
              blurRadius: 6,
            )
          ],
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                '$score',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
