import 'package:flutter/material.dart';

class LevelButton extends StatefulWidget {
  final String level;
  void Function()? onTap;
  LevelButton({super.key,required this.level, this.onTap});

  @override
  State<LevelButton> createState() => _LevelButtonState();
}

class _LevelButtonState extends State<LevelButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onTap,
      child: Container(
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
        
      ),
    );
  }
}
