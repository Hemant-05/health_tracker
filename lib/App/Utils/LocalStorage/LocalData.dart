import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/Messages/Screens/notification_screen.dart';
import 'package:health_tracker/App/Features/Messages/Widgets/notification_card.dart';
import 'package:health_tracker/App/Utils/Constants/IconsStrings.dart';

class LocalData{
  static List<Specialties> specialtiesList = [
    Specialties(name: 'Cardiology', icon: IconsString.cardiologyIcon),
    Specialties(name: 'Dermatology', icon: IconsString.dermatologyIcon),
    Specialties(name: 'Medicine', icon: IconsString.medicineIcon),
    Specialties(name: 'Gynecology', icon: IconsString.gynecologyIcon),
    Specialties(name: 'Odontology', icon: IconsString.odontologyIcon),
    Specialties(name: 'Oncology', icon: IconsString.oncologyIcon),
    Specialties(name: 'Orthopedics', icon: IconsString.orthopedicsIcon),
    Specialties(name: 'Ophtamology', icon: IconsString.ophtamology),
  ];

  static List notificationsList = [
    NotificationCard(
    title: "Scheduled Appointment",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
    time: "2 M",
    icon: Icons.calendar_today,
  ),
    NotificationCard(
      title: "Scheduled Change",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      time: "2 H",
      icon: Icons.calendar_today,
      isHighlighted: true,
    ),
    NotificationCard(
      title: "Medical Notes",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      time: "3 H",
      icon: Icons.notes,
    ),
    // Section Header: Yesterday
    SectionHeader(title: "Yesterday"),
    NotificationCard(
      title: "Scheduled Appointment",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      time: "1 D",
      icon: Icons.calendar_today,
    ),
    // Section Header: 15 April
    SectionHeader(title: "15 April"),
    NotificationCard(
      title: "Medical History Update",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      time: "5 D",
      icon: Icons.history,
    ),
  ];
}

class Specialties{
  final String name;
  final String icon;
  Specialties({required this.name, required this.icon});
}