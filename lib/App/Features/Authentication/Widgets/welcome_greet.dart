import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';

class WelcomeGreet extends StatelessWidget {
  const WelcomeGreet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextStrings.welcome,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: MyColors.primary),
        ),
        const SizedBox(
          height: MySizes.sm,
        ),
        Text(
          TextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}