import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/Messages/Screens/notification_screen.dart';
import 'package:health_tracker/App/Features/Messages/Widgets/notification_card.dart';
import 'package:health_tracker/App/Utils/Constants/IconsStrings.dart';

class Notifications {
  static List notificationsList = [
    const NotificationCard(
      title: "Scheduled Appointment",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      time: "2 M",
      icon: Icons.calendar_today,
    ),
    const NotificationCard(
      title: "Scheduled Change",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      time: "2 H",
      icon: Icons.calendar_today,
      isHighlighted: true,
    ),
    const NotificationCard(
      title: "Medical Notes",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      time: "3 H",
      icon: Icons.notes,
    ),
    // Section Header: Yesterday
    const SectionHeader(title: "Yesterday"),
    const NotificationCard(
      title: "Scheduled Appointment",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      time: "1 D",
      icon: Icons.calendar_today,
    ),
    // Section Header: 15 April
    const SectionHeader(title: "15 April"),
    const NotificationCard(
      title: "Medical History Update",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      time: "5 D",
      icon: Icons.history,
    ),
  ];
}

class Specialty {
  final String name;
  final String icon;
  Specialty({required this.name, required this.icon});
  static List<Specialty> specialtiesList = [
    Specialty(name: 'Cardiology', icon: IconsString.cardiologyIcon),
    Specialty(name: 'Dermatology', icon: IconsString.dermatologyIcon),
    Specialty(name: 'General Medicine', icon: IconsString.medicineIcon),
    Specialty(name: 'Gynecology', icon: IconsString.gynecologyIcon),
    Specialty(name: 'Odontology', icon: IconsString.odontologyIcon),
    Specialty(name: 'Oncology', icon: IconsString.oncologyIcon),
    Specialty(name: 'Orthopedics', icon: IconsString.orthopedicsIcon),
    Specialty(name: 'Ophthalmology', icon: IconsString.ophthalmologIcon),
    Specialty(name: 'Physiotherapist', icon: IconsString.dermatologyIcon),
  ];
}
