import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/back_button.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/LocalStorage/LocalData.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        elevation: 0,
        centerTitle: true,
        title: Text('Notification',style: Theme.of(context).textTheme.headlineMedium!
            .copyWith(color: MyColors.white),),
        leading: backButton(context)
      ),
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
                  child: Text("Today"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: Text("Mark all"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // Timing header section :-
                SectionHeader(title: "Today"),
                LocalData.notificationsList[0],
                LocalData.notificationsList[1],
                LocalData.notificationsList[2],
                LocalData.notificationsList[3],
                LocalData.notificationsList[4],
                LocalData.notificationsList[5],
                LocalData.notificationsList[6],
              ],
            )
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  SectionHeader({required this.title});

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
