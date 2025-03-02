import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/Home/screens/home_tab_bar.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:iconsax/iconsax.dart';

class PaymentSuccessScreen extends StatelessWidget {
  final String doctorName;
  const PaymentSuccessScreen({super.key, required this.doctorName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: const Text(
          'Payment',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/onBoarding/successgif.gif",
              width: 280,
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              "Payment Successful!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: MyColors.primary,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Thank you for your payment.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 15),
            Container(
              width: 400,
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text(
                      'Successfully booked your appointment with:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      doctorName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Iconsax.calendar, size: 20),
                          SizedBox(width: 10),
                          Text(
                            'Date: March 15, 2022',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(width: 25),
                          Icon(Iconsax.clock, size: 20),
                          SizedBox(width: 10),
                          Text(
                            "10:00 am",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Download Receipt',
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 90),
            SizedBox(
              width: 150,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeTabBar()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: const Text('Back to Home')),
            ),
          ],
        ),
      ),
    );
  }
}
