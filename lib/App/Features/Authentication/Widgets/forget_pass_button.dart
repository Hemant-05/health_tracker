import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';

Row forget_pass_button(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.all(MySizes.sm),
        child: InkWell(
          onTap: () {
            // navigate to forgot password screen
          },
          child: Text(
            TextStrings.forgetPassword,
            style: Theme
                .of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: MyColors.primary),
          ),
        ),
      ),
    ],
  );
}