import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;
  final String timestamp;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isSentByMe,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSentByMe ? Colors.teal[100] : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.teal, width: 0.5),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          Text(
            timestamp,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
