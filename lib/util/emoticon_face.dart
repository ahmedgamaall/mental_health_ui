import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  const EmoticonFace({Key? key, required this.emoticonFace, required this.feel})
      : super(key: key);

  final String emoticonFace;
  final String feel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Text(
            emoticonFace,
            style: const TextStyle(
              fontSize: 28.0,
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          feel,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
