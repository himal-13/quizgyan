import 'package:flutter/material.dart';

class LevelButton extends StatefulWidget {
  final String level;
  const LevelButton({super.key,required this.level});

  @override
  State<LevelButton> createState() => _LevelButtonState();
}

class _LevelButtonState extends State<LevelButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.black,
          width: 2,
        )

      ),
      child: Center(child: Text(widget.level)),
      
    );
  }
}
