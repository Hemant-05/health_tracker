import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/back_button.dart';
import 'package:health_tracker/App/Utils/Constants/ImageStrings.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String name = 'Hemant sahu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        leading: backButton(context),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(ImageStrings
                  .first_onBoarding_image), // Replace with actual image
            ),
            SizedBox(width: 10),
            Text(name,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: MyColors.white)),
            Container(),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
            color: MyColors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam_rounded),
            color: MyColors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              children: [
                // Example Chat Bubble (Received)
                ChatBubble(
                  message:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  isSentByMe: false,
                  timestamp: "09:00",
                ),
                // Example Chat Bubble (Sent)
                ChatBubble(
                  message:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  isSentByMe: true,
                  timestamp: "09:30",
                ),
                // Example Audio Message Bubble
                AudioBubble(
                  duration: "02:50",
                  isSentByMe: false,
                  timestamp: "09:50",
                ),
                // Example Typing Indicator

              ],
            ),
          ),
          // Input Field
          Container(
            padding: EdgeInsets.all(8),
            color: MyColors.primary,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.attach_file_rounded,color: MyColors.white,)),
                      hintText: "Write here...",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: MyColors.white),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.mic, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;
  final String timestamp;

  ChatBubble({
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
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSentByMe ? Colors.teal[100] : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.teal, width: 0.5),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Text(
            timestamp,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class AudioBubble extends StatelessWidget {
  final String duration;
  final bool isSentByMe;
  final String timestamp;

  AudioBubble({
    required this.duration,
    required this.isSentByMe,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSentByMe ? Colors.teal[100] : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.teal, width: 0.5),
      ),
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isSentByMe)
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(ImageStrings
                  .first_onBoarding_image), // Replace with actual image
            ),
          SizedBox(width: 5),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.play_arrow, color: Colors.teal),
              SizedBox(width: 5),
              Text(duration, style: TextStyle(color: Colors.black)),
            ],
          ),
          SizedBox(width: 5),
          Text(
            timestamp,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
