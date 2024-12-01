import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';

Container term_and_condition(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(MySizes.spaceBtwItems),
    alignment: Alignment.center,
    child: Column(
      children: [
        Text(
          TextStrings.iAgreeTo,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: MyColors.black),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TextStrings.termsOfUse,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: MyColors.primary),
            ),
            Text(
              ' and ',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!,
            ),
            Text(
              TextStrings.privacyPolicy,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: MyColors.primary),
            ),
          ],
        ),
      ],
    ),
  );
}