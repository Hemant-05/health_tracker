import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/widgets/back_button.dart';
import 'package:health_tracker/App/Common/widgets/custom_elevated_button.dart';
import 'package:health_tracker/App/Features/Payment/screens/payment_method_screen.dart';
import 'package:health_tracker/App/Features/Payment/screens/payment_success_screen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';

class PaymentScreen extends StatelessWidget {
  final String doctorName;
  final String doctorImage;
  final String specislistIn;
  const PaymentScreen(
      {super.key,
      required this.doctorName,
      required this.doctorImage,
      required this.specislistIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
          backgroundColor: MyColors.primary,
          elevation: 0,
          leading: backButton(context)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: MyColors.primary,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Text(
                    "\$100.00",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 36, color: MyColors.white),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 30,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(doctorImage),
                          ) // Replace with actual image
                          ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            doctorName,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: MyColors.white),
                          ),
                          Text(
                            specislistIn,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.verified, color: Colors.white, size: 20),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow(
                      context, "Date / Hour", "Month 24, Year / 10:00 AM"),
                  _buildInfoRow(context, "Duration", "30 Minutes"),
                  _buildInfoRow(context, "Booking for", "Jhon Doe"),
                  const Divider(),
                  _buildInfoRow(context, "Amount", "\$100.00"),
                  _buildInfoRow(context, "Duration", "30 Minutes"),
                  const Divider(),
                  _buildInfoRow(context, "Total", "\$100", bold: true),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment Method",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Row(
                        children: [
                          Text(
                            "Card",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          const SizedBox(width: 5),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PaymentMethodScreen()));
                            },
                            child: Text(
                              "Change",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: MyColors.primary),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Expanded(child: Container()),
            Container(
              padding: const EdgeInsets.all(MySizes.md),
              width: double.infinity,
              child: CustomElevatedButton(
                  fun: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentSuccessScreen(
                                doctorName: doctorName,
                              ),),
                    );
                  },
                  text: 'Pay Now'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value,
      {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: Colors.grey.shade700, fontSize: 14),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontSize: 14,
                fontWeight: bold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
