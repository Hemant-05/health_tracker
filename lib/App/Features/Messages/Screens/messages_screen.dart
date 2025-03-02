import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({
    super.key,
  });

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        centerTitle: true,
        leading: null,
        title: Text(
          TextStrings.messages,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: MyColors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit_note,
              color: MyColors.white,
              size: 30,
            ),
          ),
        ],
      ),
      // Listveiw builder
      // body:
      // ),
    );
  }
}
