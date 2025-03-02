import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/Messages/Screens/chat_screen.dart';
import 'package:health_tracker/App/Features/Payment/screens/payment_screen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/LocalStorage/doctor_data.dart';
import 'package:iconsax/iconsax.dart';

class DoctorProfileScreen extends StatefulWidget {
  final Map<String, dynamic> doctorData;

  const DoctorProfileScreen({super.key, required this.doctorData});

  @override
  State<DoctorProfileScreen> createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen> {
  bool isFavorites = false;
  DateTime? selectedDate;
  String? selectedSlot; // Stores selected time slot

  @override
  Widget build(BuildContext context) {
    final availableTimeSlots = DoctorData().availableTimeSlots;

    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDoctorInfo(),
            const SizedBox(height: 16),
            _buildAvailabilitySection(),
            const SizedBox(height: 16),
            _buildDescriptionSection(),
            const SizedBox(height: 20),
            _buildDatePicker(),
            const SizedBox(height: 20),
            _buildTimeSlots(availableTimeSlots),
            const SizedBox(height: 30),
            _buildBookAppointmentButton(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: MyColors.primary,
      title:
          const Text("Doctor Profile", style: TextStyle(color: Colors.white)),
      actions: [
        IconButton(
          onPressed: () {
            setState(() => isFavorites = !isFavorites);
          },
          icon: Icon(
            isFavorites ? Iconsax.heart5 : Iconsax.heart,
            color: isFavorites ? Colors.red : Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(
                  doctorName: widget.doctorData['name'],
                  doctorImage: widget.doctorData['image'],
                ),
              ),
            );
          },
          icon: const Icon(Iconsax.messages, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildDoctorInfo() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: widget.doctorData['image'] != null
                  ? AssetImage(widget.doctorData['image'])
                  : null,
              child: widget.doctorData['image'] == null
                  ? const Icon(Icons.person, size: 50, color: Colors.grey)
                  : null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.doctorData['name'],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.doctorData['specialist_in'],
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.call, color: MyColors.primary),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvailabilitySection() {
    return Center(
      child: Container(
        width: 300,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: MyColors.primary,
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Iconsax.calendar, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Mon - Sat / 9 AM - 6 PM",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        widget.doctorData['discription'] ?? 'No description available.',
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildDatePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Consultation Date:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365)),
            );

            if (pickedDate != null) {
              setState(() => selectedDate = pickedDate);
            }
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                      : "Select a date",
                  style: const TextStyle(fontSize: 16),
                ),
                const Icon(Icons.calendar_today, color: MyColors.primary),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTimeSlots(List<String> availableTimeSlots) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Available Time Slots:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 2.5,
          ),
          itemCount: availableTimeSlots.length,
          itemBuilder: (context, index) {
            bool isSelected = selectedSlot == availableTimeSlots[index];

            return GestureDetector(
              onTap: () {
                setState(() => selectedSlot = availableTimeSlots[index]);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? MyColors.primary : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color:
                          isSelected ? MyColors.primary : Colors.grey.shade300),
                ),
                alignment: Alignment.center,
                child: Text(
                  availableTimeSlots[index],
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black87),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildBookAppointmentButton() {
    return Center(
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PaymentScreen(
                          doctorName: widget.doctorData['name'],
                          doctorImage: widget.doctorData['image'],
                          specislistIn: widget.doctorData['specialist_in'],
                        )));
          },
          child: const Text('Book Appointment'),
        ),
      ),
    );
  }
}
