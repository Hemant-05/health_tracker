import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/widgets/back_button.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/LocalStorage/local_data.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyColors.primary,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Notification',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: MyColors.white),
          ),
          leading: backButton(context)),
      body: Column(
        children: [
          // Top Section with "Today" button, search bar, and "Mark all"
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text("Today"),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      prefixIcon: const Icon(Icons.search),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text("Mark all"),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              // Timing header section :-
              const SectionHeader(title: "Today"),
              Notifications.notificationsList[0],
              Notifications.notificationsList[1],
              Notifications.notificationsList[2],
              Notifications.notificationsList[3],
              Notifications.notificationsList[4],
              Notifications.notificationsList[5],
              Notifications.notificationsList[6],
            ],
          )),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
