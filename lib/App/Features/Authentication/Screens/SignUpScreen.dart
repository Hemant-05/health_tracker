import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/AppBarSpacing.dart';
import 'package:health_tracker/App/Common/MyElevatedButton.dart';
import 'package:health_tracker/App/Common/MyOutlinedButton.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/CameraIconButton.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/MyTextFormField.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: MyAppBarSpacing.paddingWithAppBarHeight,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TextStrings.createAccount,
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 50),
                    ),
                    const SizedBox(height: MySizes.spaceBtwItems),
                    const CameraIconButton(),
                    const SizedBox(height: MySizes.spaceBtwSections),
                    MyTextFormField(
                        controller: emailController,
                        label: TextStrings.email,
                        icon: const Icon(Icons.mail_outline_rounded),
                        isObscure: false),
                    const SizedBox(height: MySizes.spaceBtwInputFields),
                    MyTextFormField(
                        controller: passController,
                        label: TextStrings.password,
                        icon: const Icon(Icons.key_rounded),
                        isObscure: true),
                    const SizedBox(height: MySizes.spaceBtwInputFields),
                    MyTextFormField(
                        controller: numberController,
                        label: TextStrings.phoneNo,
                        icon: const Icon(Icons.call),
                        isObscure: false),
                    const SizedBox(height: MySizes.spaceBtwSections),
                    MyElevatedButton(fun: () {}, text: TextStrings.signUp),
                    const SizedBox(height: MySizes.spaceBtwItems),
                    MyOutlinedButton(fun: () {}, text: TextStrings.cancel)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

