import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/Appointment/screens/doctor_review_screen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:iconsax/iconsax.dart';

class DetailedAppointmentScreen extends StatelessWidget {
  final String doctorName;
  final String date;
  final String time;
  final String image;
  final String specialty;

  const DetailedAppointmentScreen({
    super.key,
    required this.doctorName,
    required this.date,
    required this.time,
    required this.image,
    required this.specialty,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: const Text(
          'Appointment Details',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Doctor Information Card
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(image),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        specialty,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Appointment Details
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    leading:
                        const Icon(Iconsax.calendar, color: MyColors.primary),
                    title: Text(
                      date,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Appointment Date"),
                  ),
                  ListTile(
                    leading: const Icon(Iconsax.clock, color: MyColors.primary),
                    title: Text(
                      time,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Time Slot"),
                  ),
                  const ListTile(
                    leading: Icon(Iconsax.timer, color: MyColors.primary),
                    title: Text(
                      "30 Minutes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Duration"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            // Buttons for rescheduling or canceling
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Reschedule action
                  },
                  icon: const Icon(Iconsax.clock),
                  label: const Text("Reschedule"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primary,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Cancel action
                  },
                  icon: const Icon(Iconsax.trash),
                  label: const Text("Cancel"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),
            const Spacer(),
            // Leave a Review Button
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DoctorReviewScreen(
                                image: image,
                                specialty: specialty,
                                doctorName: doctorName,
                              )));
                },
                icon: const Icon(Iconsax.star, color: Colors.white),
                label: const Text("Leave a Review"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.primary,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
