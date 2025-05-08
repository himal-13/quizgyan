import 'dart:math';

import 'package:flutter/material.dart';

const List<String> didYouKnowList = [
  'नेपालको राष्ट्रिय फूल लालीगुराँस हो।',
  'नेपालको राष्ट्रिय चिहान गोरखाली चिहान हो।',
  'नेपालको राष्ट्रिय पशु गाई हो।',
  'नेपालको राष्ट्रिय चरा डाँफे हो।',
  'नेपालको राष्ट्रिय खेल भलिबल हो।',
];

class DidYouKnow extends StatefulWidget {
  const DidYouKnow({super.key});

  @override
  State<DidYouKnow> createState() => _DidYouKnowState();
}

class _DidYouKnowState extends State<DidYouKnow> {
  String currestFact = didYouKnowList[Random().nextInt(didYouKnowList.length)];

  // void _generateFact() {
  //   setState(() {
  //     currestFact = didYouKnowList[Random().nextInt(didYouKnowList.length)];
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'के तपाईंलाई थाहा छ?',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.menu_book_outlined, size: 12,)
            ],
          ),
          const SizedBox(height: 10),
          Text(currestFact)
      
        ],
      ),

    );
  }
}
