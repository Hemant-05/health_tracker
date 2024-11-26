import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key,
      required this.controller,
      required this.label,
      required this.icon,
      required this.isObscure});

  final TextEditingController controller;
  final String label;
  final Icon icon;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      decoration: InputDecoration(
        prefixIcon: icon,
        labelText: label,
        labelStyle: const TextStyle(
          color: MyColors.darkGrey,
        ),
      ),
      controller: controller,
    );
  }
}
