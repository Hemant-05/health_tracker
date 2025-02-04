import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/pharmacy/widgets/rating_bar.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';

class PharmacyProfile extends StatefulWidget {
  final String pharmacyName;
  final String discription;
  final bool favourite;
  final String address;
  final String contact;
  final String timing;
  final String map;

  const PharmacyProfile({
    super.key,
    required this.pharmacyName,
    required this.discription,
    required this.address,
    required this.contact,
    required this.timing,
    required this.map,
    required this.favourite,
  });

  @override
  State<PharmacyProfile> createState() => _PharmacyProfileState();
}

class _PharmacyProfileState extends State<PharmacyProfile> {
  bool isFavourite = false;
  final TextEditingController _reviewController = TextEditingController();

// Function to show snack bar
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: Text(
          widget.pharmacyName,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Pharmacy Description & Heart Icon
              Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 307,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: Text(
                        widget.discription,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 12),
                    IconButton(
                      icon: Icon(
                        widget.favourite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: widget.favourite ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        isFavourite = !isFavourite;
                      },
                    ),
                  ],
                ),
              ),

              // Address Text
              Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: Text(
                  "Address:  ${widget.address}",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),

              // Contact Text with Call Button
              Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: Row(
                  children: [
                    Text(
                      "Contact:  ${widget.contact}",
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                      icon: const Icon(Icons.call),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              // Timing Text
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  "Opening Hours:  ${widget.timing}",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),

              // Rating Bar
              const Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Row(
                  children: [
                    Text(
                      "Rating: ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    PharmacyRatingBar(),
                  ],
                ),
              ),

              // Share Button
              const SizedBox(height: 25),
              Center(
                child: SizedBox(
                  width: 201,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primary),
                    child: const Text("Share Pharmacy Profile"),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Map Image (Centered at the bottom)
              Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 8,
                        spreadRadius: 2)
                  ],
                  image: DecorationImage(
                    image: AssetImage(widget.map),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Review Section - Allow users to add their review
              const SizedBox(
                height: 6,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Leave a Review:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              TextFormField(
                controller: _reviewController,
                decoration: InputDecoration(
                  hintText: 'Write a review...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                maxLines: 4,
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 190,
                height: 49,
                child: ElevatedButton(
                  onPressed: () {
                    final review = _reviewController.text;

                    if (review.isEmpty) {
                      _showSnackBar("Please write a review first.");
                    } else {
                      _showSnackBar("Review Submitted");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.primary),
                  child: const Text("Submit Review"),
                ),
              ),
            ],
            // Submit Review Button
          ),
        ),
      ),
    );
  }
}
