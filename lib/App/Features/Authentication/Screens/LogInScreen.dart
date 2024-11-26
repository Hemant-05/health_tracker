import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/MyElevatedButton.dart';
import 'package:health_tracker/App/Common/MyOutlinedButton.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/MyTextFormField.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/WelcomeGreet.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [
            Expanded(child: Container()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WelcomeGreet(),
                const SizedBox(height: MySizes.spaceBtwItems),
                MyTextFormField(
                  controller: emailController,
                  label: TextStrings.email,
                  icon: const Icon(Icons.mail_outline_rounded),
                  isObscure: false,
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields),
                MyTextFormField(
                  controller: passController,
                  label: TextStrings.password,
                  icon: const Icon(Icons.key),
                  isObscure: true,
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                MyElevatedButton(
                  fun: () {},
                  text: TextStrings.next,
                ),
                const SizedBox(height: MySizes.sm),
                MyOutlinedButton(
                  fun: () {
                    Navigator.pop(context);
                  },
                  text: TextStrings.cancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
