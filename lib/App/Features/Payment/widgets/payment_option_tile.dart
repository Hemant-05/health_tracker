import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';

class PaymentOptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final VoidCallback fun;

  const PaymentOptionTile({
    super.key,
    required this.icon,
    required this.title,
    this.isSelected = false,
    required this.fun,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: MyColors.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: fun,
        leading: Icon(icon, color: MyColors.primary),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        trailing: Icon(
          isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
          color: MyColors.primary,
        ),
      ),
    );
  }
}
