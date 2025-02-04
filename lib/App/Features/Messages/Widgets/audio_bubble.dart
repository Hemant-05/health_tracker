import 'package:flutter/material.dart';

class AudioBubble extends StatelessWidget {
  final String duration;
  final bool isSentByMe;
  final String timestamp;

  const AudioBubble({
    super.key,
    required this.duration,
    required this.isSentByMe,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSentByMe ? Colors.teal[100] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.teal, width: 0.5),
        ),
        child: Row(
          children: [
            const Icon(Icons.play_arrow, color: Colors.teal),
            const SizedBox(width: 5),
            Text(duration, style: const TextStyle(color: Colors.black)),
            const SizedBox(width: 10),
            Text(
              timestamp,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
