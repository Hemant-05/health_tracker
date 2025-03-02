import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({
    super.key,
    required this.controller,
    required this.label,
    required this.icon,
    required this.isObscure,
  });

  final TextEditingController controller;
  final String label;
  final Icon icon;
  final bool isObscure;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Please fill ${widget.label}";
        }
        if (widget.label == TextStrings.exampleEmail &&
            (!value.contains('@') && !value.contains('.com'))) {
          return "Please enter a valid email";
        }
        return null;
      },
      obscureText: widget.isObscure && !showPass,
      decoration: InputDecoration(
          suffixIcon: Visibility(
            visible: widget.isObscure,
            child: IconButton(
              onPressed: () {
                setState(() {
                  showPass = !showPass;
                });
              },
              icon: Icon(
                showPass
                    ? Icons.remove_red_eye_outlined
                    : Icons.remove_red_eye_rounded,
              ),
            ),
          ),
          border: InputBorder.none,
          hintText: widget.label,
          hintStyle: const TextStyle(color: MyColors.primary)),
      controller: widget.controller,
    );
  }
}
