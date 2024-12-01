import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/ElevatedLogo.dart';
import 'package:health_tracker/App/Common/MyElevatedButton.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/LogInScreen.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/SignUpScreen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(MySizes.xl),
                alignment: Alignment.bottomCenter,
                child: const ElevatedLogo(),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                            text: 'Health',
                            style: TextStyle(
                              color: MyColors.primary,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Tracker',
                            style: TextStyle(
                              color: MyColors.primary,
                              fontSize: 30,
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: MySizes.sm,
                      ),
                      Text(
                        TextStrings.quote,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      MyElevatedButton(
                        fun: () => MyHelperFunctions.navigateToScreen(
                            context, const LogInScreen()),
                        text: TextStrings.login,
                      ),
                      const SizedBox(
                        height: MySizes.spaceBtwItems * 0.6,
                      ),
                      MyElevatedButton(
                        fun: () => MyHelperFunctions.navigateToScreen(
                            context, SignUpScreen()),
                        text: TextStrings.signUp,
                        color: MyColors.secondary,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
