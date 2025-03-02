import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/widgets/back_button.dart';
import 'package:health_tracker/App/Features/Messages/Widgets/audio_bubble.dart';
import 'package:health_tracker/App/Features/Messages/Widgets/chat_bubble.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:iconsax/iconsax.dart';

class ChatScreen extends StatefulWidget {
  final String doctorName;
  final String doctorImage;

  const ChatScreen({
    super.key,
    required this.doctorName,
    required this.doctorImage,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        leading: backButton(context),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.doctorImage),
            ),
            const SizedBox(width: 10),
            Text(
              widget.doctorName,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: MyColors.white),
              // overflow: TextOverflow.ellipsis,
              // maxLines: 1,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.call, color: MyColors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.video, color: MyColors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              children: const [
                ChatBubble(
                  message: "Hello! How can I help you today?",
                  isSentByMe: false,
                  timestamp: "09:00",
                ),
                ChatBubble(
                  message: "I have a question about my health.",
                  isSentByMe: true,
                  timestamp: "09:30",
                ),
                AudioBubble(
                  duration: "02:50",
                  isSentByMe: false,
                  timestamp: "09:50",
                ),
              ],
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      padding: const EdgeInsets.all(8),
      color: MyColors.primary,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Write here...",
                hintStyle: const TextStyle(color: Colors.white),
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.attach_file_rounded,
                      color: MyColors.white),
                ),
              ),
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: MyColors.white),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.mic, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
