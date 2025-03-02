import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/Messages/Screens/chat_screen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';
import 'package:health_tracker/App/Utils/LocalStorage/doctor_data.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({
    super.key,
  });

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final doctors_list = DoctorData.specialties[0]['doctors_list'];

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
      body: ListView.builder(

        itemCount: doctors_list.length,
        itemBuilder: (context, index) {
          final doctor = doctors_list[index];
          return Container(
            color: MyColors.white,
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(doctorName: doctor['name'], doctorImage: doctor['image']),
                  ),
                );
              },
              leading: CircleAvatar(
                backgroundColor: MyColors.primary,
                child: Image.asset(doctor['image']),
              ),
              title: Text(doctor['name']),
              subtitle: Text(doctor['specialist_in']),
            ),
          );
        },
      ),
    );
  }
}
