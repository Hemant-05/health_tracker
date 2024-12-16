import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/back_button.dart';
import 'package:health_tracker/App/Common/my_elevated_button.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        elevation: 0,
        leading: backButton(context)
      ),
      body: Column(
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
                    const CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person) // Replace with actual image
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Emma Hall, M.D.",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: MyColors.white),
                        ),
                        Text(
                          "General Doctor",
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
            padding: const EdgeInsets.all(MySizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfoRow(context, "Date / Hour", "Month 24, Year / 10:00 AM"),
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
                        Text(
                          "Change",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: MyColors.primary),
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            padding: EdgeInsets.all(MySizes.md),
            width: double.infinity,
            child: MyElevatedButton(fun: (){}, text: 'Pay Now'),
          ),
        ],
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
