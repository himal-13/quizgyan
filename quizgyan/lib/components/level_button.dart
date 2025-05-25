import 'package:flutter/material.dart';

class LevelButton extends StatelessWidget {
  final String level;
  final void Function()? onTap;
  const LevelButton({super.key,required this.level, this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.black,
            width: 2,
          )
      
        ),
        child: Center(child: Text(level, style: TextStyle(fontSize: 25),)),
        
      ),
    );
  }
}
