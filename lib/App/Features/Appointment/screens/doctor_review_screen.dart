import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';

class DoctorReviewScreen extends StatefulWidget {
  final String image;
  final String doctorName;
  final String specialty;

  const DoctorReviewScreen({
    super.key,
    required this.image,
    required this.doctorName,
    required this.specialty,
  });

  @override
  State<DoctorReviewScreen> createState() => _DoctorReviewScreenState();
}

class _DoctorReviewScreenState extends State<DoctorReviewScreen> {
  int selectedRating = 0;
  final TextEditingController reviewController = TextEditingController();
  final int maxCharacters = 200; // Max character limit for the review

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: const Text(
          'Leave a Review',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Doctor Profile Section
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(widget.image),
              ),
              const SizedBox(height: 15),
              Text(
                widget.doctorName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: MyColors.primary,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                widget.specialty,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),

              // Rating Section
              const Text(
                "Rate Your Experience",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return IconButton(
                    onPressed: () {
                      setState(() {
                        selectedRating = index + 1;
                      });
                    },
                    icon: Icon(
                      Icons.star,
                      color:
                          index < selectedRating ? Colors.amber : Colors.grey,
                      size: 30,
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),

              // Review Input Section
              const Text(
                "Write a Review",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: reviewController,
                maxLines: 4,
                maxLength: maxCharacters,
                onChanged: (text) => setState(() {}), // Updates counter
                decoration: InputDecoration(
                  hintText: "Share your experience...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.all(12),
                ),
              ),

              // Character Counter
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "${reviewController.text.length} / $maxCharacters",
                  style: TextStyle(
                    fontSize: 12,
                    color: reviewController.text.length >= maxCharacters
                        ? Colors.red
                        : Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Submit Button
              AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: selectedRating > 0 && reviewController.text.isNotEmpty
                    ? 1.0
                    : 0.5,
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: selectedRating > 0 &&
                            reviewController.text.isNotEmpty
                        ? () {
                            // Handle review submission
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Review Submitted Successfully!"),
                                backgroundColor: Colors.black,
                              ),
                            );
                            Navigator.pop(context);
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      "Submit Review",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
